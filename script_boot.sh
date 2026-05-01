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
ls /etc: Lists everything in /etc (the folder where global system settings and configurations are stored).
| (pipe): Takes the output of the first command and sends it as input to the second command. (Bridge between comms).
head -20: Filters the text and displays only the top 20 lines.

#-------------
# REAL CASES
#-------------
lsblk -f 
#Plugged in a USB drive to format it. Use this to ensure it's /dev/sdb and NOT accidentally wipe /dev/sda (where OS lives).

sudo parted -l 
#Cloning a 4TB hard drive. Use this to confirm it uses a GPT table, since the old MBR only supports up to 2TB.

[ -d /sys/firmware/efi ] && echo "UEFI" || echo "BIOS"
#Want to dual-boot Windows and Linux. Run this to know if you must install the bootloader in modern (UEFI) or legacy (BIOS) mode.

cat /var/log/nginx/error.log | tail -20 
#Filters and reads only the last 20 errors instead of opening a massive log file that could freeze the system.

ls /etc | grep "apache" 
#Filters hundreds of files looking for matches to find a specific web server configuration folder.

ls -lai ~/.gnupg 
#Inspects the exact permissions and inode numbers of GPG encryption keys to ensure unauthorized users cannot read them.

stat payload.py 
#Extracts the exact creation and modification timestamps of a Python script during a cybersecurity forensic analysis.

mkdir -p java_project/src/models 
#Sets up the nested directory structure for a new Java medical consultation system project in a single command.

cd /var/lib/mysql 
#Navigates directly to the absolute path where SQL database files are stored to investigate an injection vulnerability.

git branch -a 
#Lists all local and remote branches to verify the current working state before pushing a university presentation project.