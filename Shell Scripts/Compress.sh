#!/bin/bash

if [ -z "$1" ]; then
  
 
  echo "Warning : Please provide the folder name as an argument"
  exit 0
fi

if [ -d "$1" ]; then

    
    filename="new_archive $(date '+%d-%m-%y').tar"
    tar --create --file="$filename" "$1"
    echo "Archive successfully created."
    
else
        echo "WARNING: Directory name doesn't exists: $1"
  
fi