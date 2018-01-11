#!/bin/bash
read -p "Enter file name:" file
           if [ -s $file ]
           then
             echo "File exists"
           else
             echo "Provide contents to the file and type EOF at the end to create file"
             cat <<'EOF'>> '$file'
             echo "File created"
           fi
