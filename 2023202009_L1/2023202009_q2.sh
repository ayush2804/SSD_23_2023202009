#!/bin/bash
# List all files and directories matching the criteria
find "$1" -maxdepth 1 -type f,d -iname "F*" ! -iname "*.cpp" -printf "%f\n"
