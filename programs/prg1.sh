#!/bin/bash
read -p "Enter file name: " value
read -p "Enter number of lines: " lines
if [ -r "$value" ] && [ -w "$value" ]
then  
	if [ "$lines" -gt 0 ] && [ "$lines" -lt 20 ]
	then
	   j="$lines"
	   echo $j
           sed -n "1,${j}p" "$value"
	else
           echo "Give the number of lines in limit"
	fi
else
	echo "check the file permission"
fi
