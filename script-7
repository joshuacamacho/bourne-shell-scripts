#!/bin/sh
if [ $# -ne 7 ]
 then
  echo this script requires exactly 7 command line arguments
  exit
fi
for index in 1 2 3 4 5 6 7
do
echo $@ | cut -d' ' -f${index}-
done

