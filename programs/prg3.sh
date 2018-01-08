#!/bin/bash
read -p "Enter file name  " file
if [ -s $file ]
then
 if [ -e backup ]
 then
   rsync --remove-source-files $file "backup/$file.tar.$(date)"
 else
  cd t1
  mkdir backup
  rsync --remove-source-files $file "backup/$file.tar.$(date)"
 fi
else
 echo "File doesnot exists"
fi
