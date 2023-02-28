#!/bin/bash

# Prompt user for filename
echo "Enter filename:"
read filename

# Check if file exists
if [ ! -f "$filename" ]; then
  echo "Error: File not found"
  exit 1
fi

# Count lines, words, and characters in file
num_lines=$(wc -l < "$filename")
num_words=$(wc -w < "$filename")
num_chars=$(wc -m < "$filename")

# Print results to screen
echo "Number of lines: $num_lines"
echo "Number of words: $num_words"
echo "Number of characters: $num_chars"





