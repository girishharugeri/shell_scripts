#!/bin/bash
#script to find given number is even or odd/
echo "\n enter the number to find Even/Odd \n"
read num
exp=`expr $num % 2`
if [ $exp -eq 0 ]
then
	echo "\n The given number $num is EVEN \n"
else
	echo "\n The given number $num is ODD \n"
fi
