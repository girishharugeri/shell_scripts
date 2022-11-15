#!/bin/bash
cd /home/ubuntu/system/devops/
path=`pwd`
echo " \n ** The current working directory is:$path ** "
echo " \n *Enter the string to check if it's file/folder/link* \n"
read string
if [ -f $string ]
then
    if [ -L $string ]
    then	    
       echo " \n * The $string is a SYMBOLIC LINK *"
    else
       echo " \n * The $string is a REGULAR FILE *"
    fi   
elif [ -d $string ]
then	
   echo " * The $string is a DIRECTORY *"
else
   echo " * The $string does't exist *"
fi   
