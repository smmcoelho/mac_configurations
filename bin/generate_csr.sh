#!/bin/bash

# This script generates a CSR and a new private key based on user input

# Step 1: Ask for email
read -rp "Enter your email address: " email

# Validate simple email format
if [[ ! "$email" =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$ ]]; then
  echo "Invalid email format."
  exit 1
fi

# Extract name part (before @)
namepart=$(echo "$email" | cut -d'@' -f1)

# Prepare output folder
output_folder="./certificate"
mkdir -p "$output_folder"

# Step 2: Create temporary OpenSSL config
tmpconf="/tmp/${namepart}_csr.conf"
cat <<EOF > "$tmpconf"
[ req ]
default_bits       = 2048
prompt             = no
default_md         = sha256
distinguished_name = dn
req_extensions     = req_ext

[ dn ]
CN = $email
emailAddress = $email

[ req_ext ]
subjectAltName = @alt_names

[ alt_names ]
email = $email
otherName.1 = 1.3.6.1.4.1.311.20.2.3;UTF8:$email
EOF

echo "Temporary OpenSSL config created at: $tmpconf"

# Step 3: Always generate a new private key
keypath="${output_folder}/${namepart}.key"
openssl genpkey -algorithm RSA -out "$keypath"
echo "New private key generated: $keypath"

# Step 4: Ask for CSR output path
default_csr_path="${output_folder}/${namepart}.csr"
read -rp "Enter the full path where to save the CSR [default: $default_csr_path]: " csrpath

# If no input, use default
if [ -z "$csrpath" ]; then
    csrpath="$default_csr_path"
fi

# If user entered a directory, append default CSR file name
if [ -d "$csrpath" ]; then
    csrpath="${csrpath}/${namepart}.csr"
fi

# Step 5: Generate the CSR
openssl req -new -key "$keypath" -out "$csrpath" -config "$tmpconf"

# Step 6: Check if CSR was successfully created
if [ $? -eq 0 ] && [ -f "$csrpath" ]; then
    echo ""
    echo "✅ CSR successfully generated at: $csrpath"
    echo "✅ Private Key generated at: $keypath"
    
    # Cleanup temporary config file
    rm -f "$tmpconf"
    echo "🧹 Temporary config file $tmpconf removed."
else
    echo "❌ Error generating CSR. Temporary config file not removed: $tmpconf"
fi
