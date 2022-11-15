#!/bin/bash
echo " \n*Enter the string to check if it is file/directory/link* \n"
read string
if [ -f $string ]
then
   if [ -L $string ]
   then
      echo " \n* The $string is a SYMBOLIC LINK *"
   else
      echo " \n* The $string ia a REGULAR FILE *"	   
   fi    
elif [ -d $string ]
then
   echo " \n* The $string is a DIRECTORY *"
else
   echo " * The $string does't exist *"  	
fi
