#!/bin/bash
opt=y
while [ $opt = Y -o $opt = y ]
do
echo "\n ** Enter the number to find factorial ** \n"
read n
result=1
while [ $n -gt 0 ]
do
    result=`expr $n \* 	$result`
    n=`expr $n - 1`
done
echo "\n The factorial is:$result \n"
echo " \n Do you want to continue?[y/n]"
read opt
done
