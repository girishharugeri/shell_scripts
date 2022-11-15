#!/bin/bash
#reverse the string\
opt=y
while [ $opt = Y -o $opt = y ]
do
echo "\n Enter the string to revers \n"
read string
rev=""
count=`echo ${#string}`
while [ $count -gt 0 ]
do
	temp=`echo $string | cut -c $count`
	rev=$rev$temp
	count=`expr $count - 1`
done
echo " \n The reverse of string is $rev"
echo "Do you want to continue?[y/n]"
read opt
done

