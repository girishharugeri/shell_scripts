#!/bin/bash
#script  to display containt of file in reverse order  also string of every line should be in reverse order\
echo "Enter the file name"
read file
count=`cat $file | wc -l`
count1=`echo ${#count}
rev=""
while [ $count -gt 0 ]
do
	head -$count $file | tail -1
	count=`expr $count - 1`
		while [ $count1 -eq 0 ]
		do
			temp=`echo $count1 | cut -c $ count1` 
			rev=$rev$temp
			count1=`expr $count1 - 1`
		done
done
echo "$rev"
