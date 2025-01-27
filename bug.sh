#!/bin/bash

# This script attempts to process a list of files, but contains a subtle error.
# The error is related to how word splitting and globbing are handled in bash.

files="file1.txt file2.txt file3.txt"

for file in $files; do
  echo "Processing: $file"
  # Problem: if any file name has spaces it will be treated as multiple files
  # Example: If file name is 'my file.txt' then it will be treated as two separate files
  # which can result in errors or unexpected behavior
  cat "$file" || echo "Error processing $file"
done