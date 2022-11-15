#!/bin/bash
 
echo " \n*Finding the greatest of four values*\n"
echo "Enter the 1st value"
read l
echo "Enter the 2nd value"
read m
echo "Enter the 3rd value"
read n
echo "Enter the 4th value"
read o
if [ $l -gt $m -a $l -gt $n -a $l -gt $o ]
then
   echo " \n*The value $l is greatest value*"
elif [ $m -gt $l -a $m -gt $n -a $m -gt $o ]
then
   echo " \n*The value $m is greatest value*"
elif [ $n -gt $l -a $n -gt $m -a $n -gt $o ]
then
   echo " \n*The value $n is greatest value*"
else
   echo " \n*The value $o is greatest value*"
fi   
