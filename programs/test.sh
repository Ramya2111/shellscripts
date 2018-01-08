#!/bin/bash
read -p "Enter file name:" file1
           if [ -s $file1 ]
           then
             echo "File exists"
           else
             echo "Provide contents to the file and type EOF at the end to create file"
             cat <<'EOF'>> '$file1'
             echo "File created"
           fi
