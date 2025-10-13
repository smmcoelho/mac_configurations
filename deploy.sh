#!/bin/bash
#

source files_and_dolders.sh

## request the user confirmation of ${USER_PATH}
printf "Is the user path ${USER_PATH} correct (y/n)? "
read answer

if [ "$answer" != "${answer#[Yy]}" ] ;then
    echo "Files being copied to ${USER_PATH} ..."
else
    echo "Please update files_and_dolders.sh with the correct folder"
    exit
fi

CopyAllFiles()
{
   ## copy folders
   for i in "${_folders[@]}"
   do
      cp --verbose -rf $i ${USER_PATH}
   done

   ## copy files
   for i in "${_files[@]}"
   do
      cp --verbose $i ${USER_PATH}
   done
}


files=""


if [ $# -gt 0 ] ; then
    _files="$@"
    echo "copy $_files"
    cp --verbose --parents $_files ${USER_PATH}
else
   CopyAllFiles
   echo "copy all"
fi
   echo "deploy finished!!!"

