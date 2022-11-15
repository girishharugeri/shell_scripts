#!/bin/bash
#reverse the containt of file and also string in every line\
echo "Enter name of the file"
read file
count=`cat $file | wc -l`
while [ $count -gt 0 ]
do
	head -$count $file | tail -1 | rev
	count=`expr $count - 1`
done

