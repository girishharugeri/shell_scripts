#!/bin/bash
a=$1
b=$2
c=`expr $a + $b`
echo "sum of 2 values is $c"
echo "triggered from webhook"
echo "triggered from pcm"
echo "triggered from pcm o1 jenkinslave1"