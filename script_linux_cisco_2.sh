#Change directory to the Documents folder in the user's home directory
cd ~/Documents

#Move the file 'people.csv' into the 'Work' directory
mv people.csv Work

#List the contents of the 'Work' directory to verify the move
ls Work

#Move multiple text files into the 'School' directory at the same time
mv numbers.txt letters.txt alpha.txt School 

#List the contents of the 'School' directory
ls School
#Art  Engineering  Math  alpha.txt  letters.txt  numbers.txt 

#Rename the file 'animals.txt' to 'zoo.txt'
mv animals.txt zoo.txt

#Remove (delete) the file named 'linux.txt'
rm linux.txt

#Attempt to list 'linux.txt' to verify it was successfully deleted
ls linux.txt

#Copy the system's passwd file to the current directory (represented by '.')
cp /etc/passwd .

#Search for the string 'sysadmin' anywhere inside the local 'passwd' file
grep sysadmin passwd 
#sysadmin:x:1001:1001:System Administrator,,,,:/home/sysadmin:/bin/bash 

#Search for the string 'root' anywhere inside the local 'passwd' file
grep 'root' passwd
#root:x:0:0:root:/root:/bin/bash                                                 
#operator:x:1000:37::/root:

#Search for lines that specifically START with 'root' using the '^' anchor
grep '^root' /etc/passwd
#root:x:0:0:root:/root:/bin/bash

#Display the entire contents of the 'alpha-first.txt' file
cat alpha-first.txt
#A is for Animal                                                                 
#B is for Bear                                                                   
#C is for Cat                                                                    
#D is for Dog                                                                    
#E is for Elephant                                                               
#F is for Flower

#Search for lines that specifically END with the letter 'r' using the '$' anchor
grep 'r$' alpha-first.txt
#B is for Bear
#F is for Flower

#Display the contents of 'red.txt'
cat red.txt
#Red
#Reef
#Rot
#Reeed
#Rd
#od
#Roof
#Reed
#Root
#reel
#read

#Search for lines containing an 'r', exactly two of any character (.), and an 'f'
grep 'r..f' red.txt

#Search for lines containing an 'r', exactly two of any character (.), and a 'd'
grep 'r..d' red.txt

#Search for lines that contain a sequence of at least four characters
grep '....' red.txt

#Search for lines containing 'r', any two characters, and 't' in the /etc/passwd file
grep 'r..t' /etc/passwd

#Display the contents of 'profile.txt'
cat profile.txt

#Search for lines containing at least one digit (0 through 9)
grep '[0-9]' profile.txt

#Search for lines containing any character that is NOT a digit (using ^ to negate)
grep '[^0-9]' profile.txt

#Search for a literal period/dot (escaping its usual regex meaning of "any character")
grep '[.]' profile.txt

#Display the contents of 'red.txt' again
cat red.txt

#Search for 'r', followed by zero or more 'e's (*), ending with 'd' (e.g. rd, red, reed)
grep 're*d' red.txt

#Search for 'r', followed by zero or more 'o's or 'e's, ending with 'd'
grep 'r[oe]*d' red.txt

#Search for zero or more 'z's (will match every line, since zero occurrences is always true)
grep 'z*' red.txt

#Search for zero or more 'e's (will also match every line)
grep 'e*' red.txt

#Search for one 'e' followed by zero or more 'e's (ensures at least one 'e' is present)
grep 'ee*' red.txt

#Search for the string 'red' in standard input (terminal will hang waiting for user input)
grep 'red'

#Switch to the root user account and fully load its environment variables
su - 

#Immediately shut down the system
shutdown now

#Display the current system date and time
date

#Schedule a system shutdown at a specific time (01:51)
shutdown 01:51  

#Schedule a shutdown in 1 minute and broadcast a warning message to logged-in users
shutdown +1 "Goodbye World!"

#Display current network interface configuration and IP addresses
ifconfig

#Send exactly 4 ICMP echo requests (pings) to test connectivity to 192.168.1.2
ping -c 4 192.168.1.2  

#Send exactly 4 pings to test connectivity to 192.168.1.3
ping -c 4 192.168.1.3 

#Log out of the current shell (or switch back to the previous user)
exit

#Display a basic snapshot of running processes for the current terminal
ps

#Display all processes currently running on the entire system
ps -e

#Display all system processes using a full-format listing (adds UID, PID, PPID, etc.)
ps -ef

#Update the local package index to reflect the latest changes from repositories
sudo apt-get update 

#Search the local package cache for any software containing the word 'cow'
apt-cache search cow

#Install the 'cowsay' package with root privileges
sudo apt-get install cowsay

#Run cowsay to print the text inside a speech bubble drawn by an ASCII cow
cowsay 'NDG Linux Unhatched'

#Install the newest versions of all packages currently installed on the system
