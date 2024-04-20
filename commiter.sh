#!/bin/bash

cd /home/siim/Music/greenwa-master/sein

number=$RANDOM
time=$(date "+%Y-%m-%d %T")

if [ $(($number % 2)) -eq 0 ]; then
    echo "[$(date "+%Y-%m-%d %T")] Big change nbr:$number" >> results.txt
    git add results.txt
    git commit -m "I rolled $number!"
    git push
fi

