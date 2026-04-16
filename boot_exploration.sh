#-l (long format): Shows permissions, owner/group, size, modification date/time, and name. -a (all): Includes hidden files (those starting with ., like .bashrc). -h (human-readable): File sizes in KB, MB, GB (e.g., 1.2M) instead of raw bytes
ls -l -a -h
#This command is exactly equivalent to the previous one
#-l -a -h (separated) = -lah (combined).
ls -lah
#Create a directory literally named "-rf", using -- to indicate that it is not an option but a name.
mkdir -- -rf
#Remove the directory named "-rf", but it will only work if it is completely empty.
rmdir -- -rf 

