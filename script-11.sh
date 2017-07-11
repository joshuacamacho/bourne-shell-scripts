#!/bin/sh
if [ $# -ne 1 -o `echo $1 | grep '[a-zA-Z]' | wc -l` -ne 0 ]
 then
  echo This script takes in exactly 1 integer between 1 and 10
  exit
fi
if [ $1 -lt 1 -o $1 -gt 10 ]
 then
  echo Value entered outside of range. Value must be between 1 and 10
  exit
fi

echo sum is `expr \( $1 \* \( $1 + 1 \) \) \/ 2`
i=1
fact=1
while [ $i -le $1 ]
do
fact=`expr $fact \* $i`
i=`expr $i + 1`
done
echo factorial is $fact
