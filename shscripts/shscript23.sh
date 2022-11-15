#!/bin/bash
opt=y
while [ $opt = Y -o $opt = y ]
do
	rem=0
	rev=""
	echo "\n Enter the number to verify Palindrome or not \n"
	read num
	temp=$num
	while [ $num -gt 0 ]
	do
		rem=`expr $num % 10`
		num=`expr $num / 10`
		rev=$rev$rem
	done
	if [ $temp -eq $rev ]
	then
   		echo "\n The $temp is PALINDROME \n"
	else
   		echo "\n The $temp is not a PALINDROME \n"	
	fi
echo "Do you want to continue?[y/n]"
read opt
done
