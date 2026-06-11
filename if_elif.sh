#!/bin/bash

#I save the first parameter I pass to the script in this variable
USER_INPUT="${1}"
#I check if the variable is empty (meaning I forgot to pass the argument)
if [[ -z "${USER_INPUT}" ]]; then
 #if it is empty, I print an error message on the screen
 echo "You must provide an argument!"
 #and I cancel the script execution by exiting with error code 1
 exit 1
#here I end my first check
fi
#now I verify if the parameter I passed corresponds to an existing file
if [[ -f "${USER_INPUT}" ]]; then
 #if it is indeed a file, I show this message confirming it
 echo "${USER_INPUT} is a file."
#if it's not a file, I check instead if it is a folder or directory
elif [[ -d "${USER_INPUT}" ]]; then
 #if it turns out to be a folder, I print this message
 echo "${USER_INPUT} is a directory."
#if it was neither a file nor a folder (or simply doesn't exist), it falls into this case
else
#and finally I show a warning saying it is neither of the two
echo "${USER_INPUT} is not a file or a directory."
#I close my block of conditions
fi