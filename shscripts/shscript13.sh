#!/bin/bash

echo " \n*Finding the greatest of three values* \n"

echo "Enter the 1st value"
read a
echo "Enter the 2nd value"
read b
echo "Enter the 3rd value"
read c
if [ $a -gt $b ] && [ $a -gt $c ]
then
   echo " \n*The value $a is greatest value*"
elif [ $b -gt $a ] && [ $b -gt $c ]
then	
   echo " \n*The value $b is greatest value*"
else
   echo " \n*The value $c is gretest value*"  	
fi   
