#!/bin/bash

echo " \n*Finding the greater of two values* \n"

echo "Enter the 1st value"
read a
echo "Enter the 2nd value"
read b
if [ $a -gt $b ]
then
   echo " \n*$a is greater than $b*"
elif [ $b -gt $a ]
then	
   echo " \n*$b is greater than $a*"
fi   
