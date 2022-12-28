#!/bin/bash
# Set the prefix for the new file names
prefix=node1_
postfix=.log

# Set the starting number for the file names
start=1

# Loop through the files
for file in *; do
  # Construct the new file name
  if [ $file != namechanger.sh ];then
  new_name=$prefix$start$postfix
  # Increment the number for the next file
  start=$((start+1))
  # Rename the file
  mv "$file" "$new_name"
  fi
done
