#!/bin/sh
if [ $# -eq 0 -o $# -gt 1 ]
 then
  echo 'This script requires exactly 1 command line argument'
  echo 'Argument: Grade Value - Int between the range 0 and 100'
  exit
fi
echo $1
if [ $1 -lt 0 -o $1 -gt 100 ]
 then
  echo 'Input needs to be between 0 and 100'
  exit
fi
if [ $1 -ge 90 ]
 then
  echo "you got A"
elif [ $1 -ge 80 ]
 then
  echo "you got B"
elif [ $1 -ge 70 ]
 then
 echo "you got C"
elif [ $1 -ge 60 ]
 then
  echo "you got D"
else
  echo "you failed"
fi
