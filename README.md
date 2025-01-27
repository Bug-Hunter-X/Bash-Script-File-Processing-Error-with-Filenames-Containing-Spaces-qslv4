# Bash Script File Processing Bug

This repository demonstrates a common error in bash scripting related to handling filenames containing spaces.  The script `bug.sh` attempts to process a list of files, but fails if any filename includes spaces. This is due to improper handling of word splitting and globbing.

The solution, provided in `bugSolution.sh`, shows the correct way to iterate over a list of files, ensuring that filenames with spaces are handled correctly.

## Bug Description
The original script uses simple word splitting to iterate through filenames.  If a filename contains spaces, it is treated as multiple separate files, leading to errors.

## Solution
The solution utilizes arrays to correctly handle filenames, avoiding the problems caused by word splitting.

## How to reproduce
1. Clone the repository.
2. Run `./bug.sh` (observe the error).
3. Run `./bugSolution.sh` (observe the correct behavior).