#!/bin/bash
opt=y
while [ $opt = Y -o $opt = y ]
do
echo "\n Enter the filename to count the character of every line of a file \n"
read file
n=1
while read -r line
do
	#echo -n $line
	ch=`echo -n "$line" | wc -c`
	#ch=`echo $line | wc -c`
	#ch=`expr $ch - 1`
echo "\n No. of character present in $n is $ch"
	n=`expr $n + 1`
done < $file
echo " \n Do you want to continue?[y/n]"
read opt
done



#echo "modify in ubuntu2"
