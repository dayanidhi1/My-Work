#!/bin/bash


src_dir="/path/to/source/directory"
dest_dir="/path/to/destination/directory"


file_ext=".txt"


if [ ! -d "$src_dir" ]; then
  echo "Source directory does not exist!"
  exit 1
fi


if [ ! -d "$dest_dir" ]; then
  mkdir -p "$dest_dir"
fi


find "$src_dir" -type f -name "*$file_ext" -exec mv {} "$dest_dir" \;

echo "Files with extension $file_ext moved from $src_dir to $dest_dir"
