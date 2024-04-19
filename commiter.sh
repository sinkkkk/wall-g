#!/bin/bash

# Change directory to the location of the Git repository
cd /home/siim/Music/greenwa-master/sein

# Generate a random number
number=$RANDOM
time=$(date "+%Y-%m-%d %T")

# Check if the random number is even
if [ $(($number % 2)) -eq 0 ]; then
    # Append the result to a text file
    echo "[$(date "+%Y-%m-%d %T")] I rolled $number" >> results.txt

    # Add the text file to the Git staging area
    git add results.txt

    # Commit the changes with a message
    git commit -m "I rolled $number!"

    # Push the changes to the remote repository
    git push
fi

