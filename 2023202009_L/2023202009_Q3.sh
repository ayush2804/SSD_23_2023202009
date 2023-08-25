#!/bin/bash 
if [ $# -eq 0 ]; then
    echo "No arguments supplied"
    exit 1
fi
directory_path="$1" 
for file in "$directory_path"/*.cpp; do
    if [ -f "$file" ]; then
        echo "$file"
        while IFS= read -r line; do
            if [[ "$line" == *"#include"* ]]; then
                echo "$line"
            fi
        done < "$file" 
        echo
    fi
done
