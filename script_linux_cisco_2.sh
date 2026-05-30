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

