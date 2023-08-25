#!/bin/bash
sorted=$(sort -f "$1")
tot_lines=$(echo "$sorted" | wc -l)
mid=$(((tot_lines / 2)+1))
middle_line=$(echo "$sorted" | sed -n "${mid}p")
#echo "$sorted"
#echo "$tot_lines"
#echo "$mid"
echo "$middle_line"
