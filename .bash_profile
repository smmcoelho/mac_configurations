# .bash_profile
echo "loading .bash_profile"

source  .alias_mac
#in terminal -> preferences -> command (complete path): => /bin/bash

##colors
COLOR_NORM='\033[0m'
COLOR_RED='\033[0;31m'
COLOR_GREEN='\033[0;32m'
COLOR_YELLOW='\033[0;33m'
COLOR_BLUE='\033[0;34m'
COLOR_PURPLE='\033[0;35m'
COLOR_CYAN='\033[0;36m'

setColor()
{
	C_NORM='\033[0m'
	sed "/${1}/s//$(printf "${2}${1}${C_NORM}")/"
}

colorIt()
{
	C_RED='\033[31m'
	C_GREEN='\033[32m'
	C_YELLOW='\033[33m'
	C_BLUE='\033[34m'
	C_PURPLE='\033[35m'
	C_CYAN='\033[36m'

	setColor ${1} $C_RED
	#sed "/${1}/s//$(printf "${C_GREEN}${1}${C_NORM}")/"
}

##############
## improves  ##
###############

# Ignore case while completing
bind 'set completion-ignore-case on'

###############
## functions ##
###############

# create tags for vimrc
createTags()
{
    cd ~/.vim/tags/
#    ctags -R --c++-kinds=+p --fields=+iaS --extra=+q /usr/include /usr/src/kernels/3.13.8-200.fc20.i686/include #/linux
    ctags -R --c++-kinds=+p --fields=+iaS --extra=+q /usr/include /usr/src/kernels/`uname -r`/include #/linux
    cd -
}

getUserDir()
{
    cd ~
    USERDIR=`pwd | cut -d '/' -f 1,2,3`
    USERDIR=${USERDIR}'/'${USER}
    echo ${USERDIR}
}

toLower()
{
            echo $1 | tr "[:upper:]" "[:lower:]"
}

toUpper()
{
            echo $1 | tr  "[:lower:]" "[:upper:]"
}

function extract()      # Handy Extract Program.
{
	if [ -f $1 ] ; then
		case $1 in
			*.tar.bz2)
				tar xvjf $1
				;;
			*.tar.gz)
				tar xvzf $1
				;;
			*.bz2)
				bunzip2 $1
				;;

			*.rar)
				unrar x $1
				;;
			*.gz)
				gunzip $1
				;;
			*.tar)
				tar xvf $1
				;;
			*.tbz2)
				tar xvjf $1
				;;
			*.tgz)
				tar xvzf $1
				;;
			*.zip)
				unzip $1
				;;
			*.Z)
				uncompress $1
				;;
			*.7z)
				7zx $1
				;;
			*)
				echo "'$1' cannot be extracted via >extract<"
				;;
		esac
	else
		echo "'$1' is not a valid file"

	fi
}


function compress()
{
dirPriorToExe=`pwd`
dirName=`dirname $1`
baseName=`basename $1`
	if [ -f $1 ] ; then
		echo "It was a file change directory to $dirName"
		cd $dirName
		case $2 in
			tar.gz)
				tar czf $baseName.tar.gz $baseName
				;;
			tar.bz2)
				tar cjf $baseName.tar.bz2 $baseName
				;;
			gz)
				gzip $baseName
				;;
			tar)
				tar -cvvf $baseName.tar $baseName
				;;
			zip)
				zip -r $baseName.zip $baseName
				;;
			*)
				echo "Method not passed compressing using tar.bz2"
				tar cjf	$baseName.tar.bz2 $baseName
				;;
			esac
				echo "Back to Directory	$dirPriorToExe"
				cd $dirPriorToExe
	else
		if [ -d	$1 ] ; then
			echo "It was a Directory change directory to $dirName"
			cd $dirName

			case $2 in
				tar.bz2)
					tar cjf $baseName.tar.bz2 $baseName
					;;
				tar.gz)
					tar czf $baseName.tar.gz $baseName
					;;
				gz)
					gzip -r $baseName
					;;
				tar)
					tar -cvvf $baseName.tar $baseName
					;;
				zip)
					zip -r $baseName.zip $baseName
					;;
				*)
					echo "Method not passed compressing using tar.bz2"
					tar cjf $baseName.tar.bz2 $baseName
					;;
			esac
			echo "Back to Directory $dirPriorToExe"
			cd $dirPriorToExe
		else
			echo "'$1' is not a valid file/folder"
		fi
	fi
	echo "Done"
	echo "###########################################"
}


str2hex()
{
    if [ $# -eq 1 ] ; then
        echo -n "${1}" | xxd -p -u
    else
        echo ${COLOR_CYAN} "Usage: $0 code" ${COLOR_NORM}
    fi
}


findOlderThen()
{
    if [ $# -eq 2 ] ; then
        find ${1} -mtime +${2} -maxdepth 1 -name \*
        #for folder add -type d
        #find ${1} -type d -mtime +${2} -maxdepth 1 -name \*
    else
        echo ${COLOR_CYAN} "Usage: $0 folder nDays" ${COLOR_NORM}
    fi
}

getWirlessPassword()
{
   if [ $# -eq 2 ] ;then
	   security find-generic-password -ga ${1}
   else
        echo ${COLOR_CYAN} "Usage: $0 NetworkName" ${COLOR_NORM}
   fi
}


# TERMINAL COLORS
export fg_bk="$(echo -n '\[\e[1;30m')\]"   # Black
export fg_rd="$(echo -n '\[\e[0;31m')\]"   # Red
export fg_gr="$(echo -n '\[\e[0;32m')\]"   # Green
export fg_lgr="$(echo -n '\[\e[02;32m')\]" # Light Green
export fg_bl="$(echo -n '\[\e[0;34m')\]"   # Blue
export fg_br="$(echo -n '\[\e[0;33m')\]"   # Brown
export fg_gy="$(echo -n '\[\e[0;37m')\]"   # Grey
export fg_wh="$(echo -n '\[\e[0;38m')\]"   # White/Black
export fg_pu="$(echo -n '\[\e[0;35m')\]"   # Purple
export fg_lbl="$(echo -n '\[\e[0;36m')\]"  # Light Blue

export PS1='\[\033[36m\]\u@\[\033[32m\]$PWD \[\033[00m\]> '



# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

openAllFiles()
{
	echo "oi	"
	#find . | grep ".cpp\|.h" | xargs vi
}



# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

# Setting PATH for Python 3.9
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"
export PATH
