#!/bin/bash
if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    exit 1
fi
directory_path="$1"     # Get the directory path from command line argument

# Find all cpp files in the directory and process them
find "$directory_path" -name "*.cpp" -type f -print0 | while IFS= read -r -d '' file; 
do
    grep "#include" "$file"
    echo
done