#!/bin/sh
if [ $# -ne 2 ]
 then
  echo This command requires exactly 2 command line arguments. Two numbers
  exit
fi
if [ `echo $1 $2 | grep '[a-zA-Z]' | wc -l` -ne 0 ]
 then
  echo This command only accepts numbers
  exit
fi
x=$1
y=$2
proceed=1
while [ $proceed -eq 1 ]
do
echo 'Add the numbers (enter a or A)'
echo 'Subtract the numbers (enter s or S)'
echo 'Multiply the numbers (enter m or M)'
echo 'Divide the numbers (enter d or D)'
echo 'Exit (select e or E)'
subproceed=1
while [ $subproceed -eq 1 ]
do
read input
case $input in
 "a"|"A")
  echo Answer is `expr $x + $y`
  subproceed=0
  ;;
 "s"|"S")
  echo Answer is `expr $x - $y`
  subproceed=0
  ;;
 "m"|"M")
  echo Answer is `expr $x \* $y`
  subproceed=0
  ;;
 "d"|"D")
  echo Answer is `expr $x \/ $y`
  subproceed=0
  ;;
 "e"|"E")
  exit
  ;;
  *)
  echo 'That is not an option!!!!! Try again'
esac
done
echo Would you like to do an operation
echo '(A) on the same two integers'
echo '(B) on a new set of integers'
echo '(E) exit'

subproceed=1
while [ $subproceed -eq 1 ]
do
read second
case $second in
 "a"|"A")
 subproceed=0
  ;;
 "b"|"B")
 echo Enter first number
 read x
 echo Enter second number
 read y
 subproceed=0
 ;;
 "e"|"E")
 exit
 ;;
 *)
 echo Not a valid input
 ;;
esac
done
done
