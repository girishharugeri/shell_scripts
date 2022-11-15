#!/bin/bash
opt=y
while [ $opt = y -o $opt = Y ]
do
	echo " Enter the string if it is file/directory/link"
read string
if [ -f $string ]
then
    if [ -L $string ]
    then
       echo " The $string is a symbolic link"
    else
       echo " The $string is a regular file"
    fi
elif [ -d $string ]
then
   echo "The $string is a directory"
else
   echo "The $string doesn't exist"
fi
echo "you want to continue[y/n]?"
read opt  
done 

