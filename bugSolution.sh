#!/bin/bash

# Improved script to handle empty or subdirectory-only cases
files=$(find . -maxdepth 1 -type f -print0 | wc -l)

if [ "$files" -gt 0 ]; then
  echo "Files found. Processing..."
  find . -maxdepth 1 -type f -print0 | while IFS= read -r -d $'\0' file; do
    echo "Processing file: $file"
    # Add your file processing logic here
    #Example : head -n 1 $file
  done
else
  echo "No files found in the current directory."
fi