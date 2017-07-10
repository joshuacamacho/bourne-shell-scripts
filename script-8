#!/bin/sh
#validation
if [ $# -ne 2 ]
 then
  echo "this script requires 2 inputs, numbers > 0"
  exit
fi

if [ `echo $1 $2 | grep '[a-zA-Z]' | wc -l` -ne 0 ]
 then
  echo 'Error: Input requires two numbers > 0'
  exit
fi

if [ $1 -lt 0 -o $2 -lt 0 ]
 then
  echo 'Error numbers must be > 0'
  exit
fi

smallest=0
largest=0

if [ $1 -gt $2 ]
 then
  smallest=$2
  largest=$1
 else
  smallest=$1
  largest=$2
fi

div=$smallest

#GCD Loop
while [ $largest -ne 0 ]
 do
  x=`expr $1 % $div`
  y=`expr $2 % $div`
  if [ $x -eq 0 -a $y -eq 0 ]
   then
    echo GDC is $div
    break
  fi
 div=`expr $div - 1`
 done

#LCM Loop
found=0
a=$1
b=$2
while [ $found -eq 0 ]
 do
  if [ $a -eq $b ]
   then
   echo LCM is $a
   found=1
  elif [ $a -gt $b ]
   then
    b=`expr $b + $2`
  else
   a=`expr $a + $1`
  fi
 done
