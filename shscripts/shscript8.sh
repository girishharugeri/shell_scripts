#!/bin/bash
echo $0
a=$1
b=$2
c=`expr $a + $b`
d=`expr $a + $b`
e=`expr $a \* $b`
f=`expr $a / $b`
echo "sum of 2 values is $c"
echo "subtract of 2 values is $d"
echo "product of 2 values is $e"
echo "division of 2 values is $f"
