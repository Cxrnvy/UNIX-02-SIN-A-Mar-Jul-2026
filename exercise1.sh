#!/bin/bash

#I'm grabbing the first argument passed in the terminal and saving it as my first name
Firstname="${1}"
#And doing the same with the second argument for my last name
Lastname="${2}"
#Creating an empty file called output.txt (though the redirect in the next step would create it anyway)
touch output.txt
#Getting today's date in a DD-MM-YYYY format and throwing it into output.txt
date +"%d-%m-%Y" > output.txt
#Appending my full name to the file right below the date so it doesn't get overwritten
echo "$Firstname $Lastname" >> output.txt
#Making a quick backup of the file just in case
cp output.txt backup.txt
#Finally, printing the contents to the screen so I can see if it worked correctly
cat output.txt