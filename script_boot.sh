git branch #Command for checking in which branch is the codespace  
mkdir #Create a new directory/folder
cd proyecto/ #Relative Rute, change to the folder (relative path)
cd /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/proyecto #Absolute Rute, moves to the exact folder


cd #Moves to home directory
cd ~ #Moves to home directory
cd /home/codespace #Moves to the codespace folder (Absolute Rute)
cd $HOME #Moves to the home directory 
echo $HOME #Shows your home directory path.
echo $BASH #Shows where Bash is installed.
echo $PATH #Shows folders where the system looks for commands.
cd /usr/local #Moves to the directory for locally installed user programs.

ls -lai #Lists all files (including hidden) with full details and inode (ID) numbers.
ls -l -a -i #Exactly the same as ls -lai, but writing the options separately.
ls --all #Long version of writing ls -a. Shows all files (including hidden) in a basic format.
. #Represents your current directory.
.. #Represents the parent directory (one level up).


total 8
1572971 drwxrwxrwx+ 2 codespace codespace 4096 Apr  9 12:19 .

total 8 #Indicates that the total space taken up by the metadata of the files in this directory is 8 disk blocks.
1572971 #The inode (ID) of your current proyecto folder.
drwxrwxrwx+ #It is a directory (d). Everyone (owner, group, and others) has full read, write, and execute permissions (rwxrwxrwx). The + means there are advanced access control rules (ACL) applied.
2 #It has 2 links pointing to it.
codespace codespace #The owner user is codespace, and the owner group is also codespace.
4096 #It weighs 4096 bytes (the standard base size for a directory in Linux).
Apr 9 12:19 #Last modified date and time.
. #Represents this very folder you are standing in.
.. #Represents that parent folder.

stat . #The stat (status) command extracts and shows absolutely all the metadata of a file or directory. It is like the extreme version of ls -lai.
Device: 7,4 #It indicates the exact physical disk or partition where this folder is saved.
7: #Tells Linux what type of device driver to use (for example, if it's a SATA hard drive, a virtual disk in your Codespace, a USB, etc.).
4: #Indicates the specific partition or the exact disk within that group.

ls /etc | head -20 #Shows the first 20 items in the system configuration directory.
ls /etc | tail -20 #hows the last 20 items in the system configuration directory.
#ls /etc: Lists everything in /etc (the folder where global system settings and configurations are stored).
#| (pipe): Takes the output of the first command and sends it as input to the second command. (Bridge between comms).
#head -20: Filters the text and displays only the top 20 lines.