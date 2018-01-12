#!/bin/bash
find -type d -name "r*" > r8.txt
value=`cat r5.txt`
for i in $value
do
  cd $i
  mkdir ramya
  cd
done
find -type d -name "ramya" | xargs rm -rf
