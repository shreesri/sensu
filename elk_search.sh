#!/bin/bash

x=$(cat elk.txt | awk '{print $7}' | sed -n 1p)
y=$(cat elk.txt | awk '{print $7}' | sed -n 2p)

if [[ $y > 0 ]]; then
        echo -e "$x value is $y";
        exit 0;
elif [[ $y == 0 ]]; then
        echo -e "$x value is zero";
        exit 1;
else
        echo -e "not working"
fi
