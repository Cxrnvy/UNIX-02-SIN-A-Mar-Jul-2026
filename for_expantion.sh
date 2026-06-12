#!/bin/bash
#I start a loop going through all files in the folder that start with example_file
for file in example_file*; do
 #I check if the current file I am looking at is exactly named example_file1
 if [[ "${file}" == "example_file1" ]]; then
 #if it is that specific file, I print a message letting me know I am skipping it
 echo "Skipping the first file"
 #I use the continue command to skip the rest of the loop and jump directly to the next file
 continue
 #I close my if statement
 fi
 #for all the other files, I generate a random number and write it inside the file, overwriting it
 echo "${RANDOM}" > "${file}"
#I close my for loop
done