#!/bin/bash

#User enters directory path
read -p "Enter directory path: " directory

#Check if path is valid
if [ ! -d "$directory" ]; then
  echo "Error: $directory is not a valid directory."
  exit 1
fi

#List files and their sizes
echo "Files in $directory with their sizes:"
for file in "$directory"/*; do
  #Check if the file is valid
  if [ -f "$file" ]; then
    #Get file size
    size=$(stat -c%s "$file")
    #Display file size and name
    echo "File size: $size bytes,  Name: $file"
  fi
done
