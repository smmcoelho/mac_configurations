#!/bin/bash
#

source files_and_dolders.sh

## request the user confirmation of ${USER_PATH}
printf "Is the user path ${USER_PATH} correct (y/n)? "
read answer

if [ "$answer" != "${answer#[Yy]}" ] ;then
    echo "Files being copied from ${USER_PATH} ..."
else
    echo "Please update files_and_dolders.sh with the correct folder"
    exit
fi


## copy the folders
for i in "${_folders[@]}"
do
   cp -rf ${USER_PATH}/$i ${DESTINATION_PATH}
done

## copy the files
for i in "${_files[@]}"
do
   cp ${USER_PATH}/$i ${DESTINATION_PATH}
done

echo "update finished!!!"

