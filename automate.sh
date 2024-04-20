#!/bin/bash
cd /home/siim/wall-e/wall-g

number=$RANDOM
time=$(date "+%Y-%m-%d %T")

if [ $(($number % 2)) -eq 0 ]; then
    echo "[$(date "+%Y-%m-%d %T")] Big change nbr:$number" >> log.txt
    git add log.txt
    git commit -m "Big change nbr:$number!"
    git push
fi

