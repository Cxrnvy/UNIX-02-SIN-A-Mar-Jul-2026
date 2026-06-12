#!/bin/bash
#I save the name of my target file into this variable
FILE="output.txt"
#I use touch to create the empty file just in case it does not exist yet
touch "${FILE}"
#I start a loop that will keep running until the file actually has some data inside it
until [[ -s "${FILE}" ]]; do
 #I print a message saying that the file is currently empty
 echo "${FILE} is empty..."
 #I let myself know that I will wait a bit before checking again
 echo "Checking again in 2 seconds..."
 #I pause the script for exactly two seconds
 sleep 2
#I close the loop so it goes back up to check the condition again
done
#once the loop breaks it means data was added so I print this success message
echo "${FILE} appears to have some content in it!"