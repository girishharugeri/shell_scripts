#!/bin/bash
opt=y
while [ $opt = Y -o $opt = y ]
do
echo " \n ** Finding sum of n numbers ** \n"
read n
result=0
while [ $n -gt 0 ]
do
	result=`expr $n + $result`
	n=`expr $n - 1`
done
echo " \n The sum of a number is: $result \n"
echo " \n Do you want to continue?[y/n]"
read opt
done
