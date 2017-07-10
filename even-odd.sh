#!/bin/sh
echo Enter a number
read number
if test `expr $number \% 2` -eq 0
then 
 echo 'This number is even'
else
 echo 'This number is odd'
fi
