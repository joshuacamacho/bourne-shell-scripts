#!/bin/sh
x=0
while [ $x -le 9 ]
do
 echo $x
 x=`expr $x + 1`
done
