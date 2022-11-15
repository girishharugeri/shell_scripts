#!/bin/bash
echo "enter the 1st value"
read a
echo "enter the 2nd value"
read b
sum=$(echo "$a + $b" | bc)
subtract=$(echo "$a - $b" | bc)
product=$(echo "$a * $b" | bc)
division=$(echo "$a / $b" | bc)
echo "The sum of two values $a and $b is $sum"
echo "The subtract of two values $a and $b is $subtract"
echo "The product of two values $a and $b is $product"
echo "The division of two values $a and $b is $division"
