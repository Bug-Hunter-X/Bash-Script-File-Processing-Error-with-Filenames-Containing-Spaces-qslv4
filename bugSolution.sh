#!/bin/bash

# This script correctly processes a list of files, even if filenames contain spaces.

files=(
"file1.txt"
"file2.txt"
"my file.txt"
"file3.txt"
)

for file in "${files[@]}"; do
  echo "Processing: $file"
  cat "$file" || echo "Error processing $file"
done