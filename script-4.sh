#!/bin/sh
setopt shwordsplit
thedate=`date`
for field in $thedate
do
 echo $field
done
