#!/bin/sh
if [ $# -ne 1 ]
 then
  echo This script requires exactly 1 argument. An integeter to be squared.
  exit
fi
if [ `echo $1 | grep '[a-zA-Z]' | wc -l` -ne 0 ]
 then
  echo This script requires an integer value
  exit
fi
echo `expr $1 \* $1`
