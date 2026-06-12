#!/bin/bash
#I save the name of the file that will stop my loop inside this variable
SIGNAL_TO_STOP_FILE="stoploop2"
#I start a loop that will keep running as long as the file does NOT exist
while [[ ! -f "${SIGNAL_TO_STOP_FILE}" ]]; do
 #I print a message to the screen saying the file is still missing
 echo "The file ${SIGNAL_TO_STOP_FILE} does not yet exist..."
 #I print another message letting me know it will retry shortly
 echo "Checking again in 2 seconds..."
 #I pause the script for exactly two seconds before trying again
 sleep 2
#I close my loop so it goes back up and evaluates the condition again
done
#if the loop finishes it means the file was created so I print this final message
echo "File was found! Exiting..."