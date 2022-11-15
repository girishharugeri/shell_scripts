#!/bin/bash
echo " \n-- Displaying FACTORIAL for given set of numbers -- \n"
num_arr="3 5 6 8 9 12"
for i in $num_arr
do
		temp=$i
		result=1
		while [ $i -gt 0 ]
		do
		result=`expr $i \* $result`
		i=`expr $i - 1`
		done
echo "\n The factorial of $temp is: $result \n"
done
