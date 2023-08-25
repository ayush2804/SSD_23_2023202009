#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
fi
directory="$1"

find "$directory" \( -type f -perm -u=rwx,g=x,o=x ! -perm -g=rx \) -o \( -type d -perm -u=rwx,g=x,o=x -perm -o=x \) -exec ls -l {} \;