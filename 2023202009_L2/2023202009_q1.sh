#!/bin/bash
read -r rows
read -a pyramids     # Read the input into an array

for n in "${pyramids[@]}"; do
    if (( n % 2 != 0 )); then
        # Print the first pyramid
        for ((i=1; i<=n/2+1; i++)); do
            for ((j=1; j<=n-i; j++)); do
                echo -n " "
            done
            for ((j=1; j<=2*i-1; j++)); do
                echo -n "*"
            done
            echo
        done

        # Print the mirror image of the pyramid
        for ((i=(n-1)/2; i>=1; i--)); do
            for ((j=1; j<=n-i; j++)); do
                echo -n " "
            done
            for ((j=1; j<=2*i-1; j++)); do
                echo -n "*"
            done
            echo
        done
    fi
done