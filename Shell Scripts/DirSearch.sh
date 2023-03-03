#!/bin/bash
echo "enter the source directory"
read src_dir

echo "enter the destination directory"
read dest_dir

#src_dir="C:\Users\daya2231\My-Work\Shell Scripts\Src Dir"
#dest_dir="C:\Users\daya2231\My-Work\Shell Scripts\Dest Dir"

echo "enter the file extension"
read file_ext

#file_ext="".txt"

if [ ! -d "$src_dir" ]; then
  echo "Source directory does not exist!"
 exit 1
fi

if [ ! -d "$dest_dir" ]; then
  mkdir -p "$dest_dir"
#else
 #  find "$src_dir" -type f -name "*$file_ext" -exec mv {} "$dest_dir" \;
fi


find "$src_dir" -type f -name "*$file_ext" -exec mv {} "$dest_dir" \;

echo "Files with extension $file_ext moved from $src_dir to $dest_dir"
