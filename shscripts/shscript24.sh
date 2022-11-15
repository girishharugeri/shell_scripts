#!/bin/bash
opt=y
while [ $opt = Y -o $opt = y ]
do
echo "\n Enter a limit(N) for a Fibonacci series"
read lim
a=0
b=1
while [ $lim -gt  0 ]
do
	echo -n " $a "
	fs=`expr $a + $b`
	a=$b
	b=$fs
	lim=`expr $lim - 1`
done
echo " \n Do you want to continue?[y/n]"
read opt
done
