#!/bin/bash
opt=y
while [ $opt = y -o $opt = Y ]
do
	echo " \n Enter the number to check odd/even \n"
read n
exp=`expr $n % 2`
if [ $exp -eq  0 ]
then
   echo "\n The $n is EVEN"
else
   echo "\n The $n is odd"
fi
echo " \nYou want to continue?[y/n]"
read opt
done
	



#echo "modify ubuntu1"
