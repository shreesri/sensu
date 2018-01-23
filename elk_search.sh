#!/bin/bash

x=$(curl -ks 'mygh-dca-qa14:9200/_cat/indices?v' | egrep -i 'health|fac' | awk '{print $7}' | sed -n 1p)
y=$(curl -ks 'mygh-dca-qa14:9200/_cat/indices?v' | egrep -i 'health|fac' | awk '{print $7}' | sed -n 2p)

if [[ $y > 0 ]]; then
        echo -e "$x value is $y";
        exit 0;
elif [[ $y == 0 ]]; then
        echo -e "$x value is zero";
        exit 1;
else
        echo -e "not working"
fi
