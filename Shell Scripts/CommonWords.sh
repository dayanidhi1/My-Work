#!/bin/bash

# Check if the file name was provided as an argument
if [ -z "$1" ]
then
  echo "Please provide the file name as an argument"
  exit 1
fi

# Read the file contents
text=$(cat $1)

# Remove special characters and split the text into words
words=$(echo "$text" | tr '[:punct:]' ' ' | tr '[:upper:]' '[:lower:]' | tr '\n' ' ' | tr -s ' ' | tr ' ' '\n')

# Count the frequency of each word and output the top 10 most frequent words
echo "$words" | sort | uniq -c | sort -rn | head -n 10
