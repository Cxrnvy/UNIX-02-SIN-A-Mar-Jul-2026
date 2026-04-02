#This command changes to the root directory where the other directories and files are located, which operate as a hierarchical system identified with a "/"
cd /

#It lists the contents of a directory, but adds a special character to indicate the file type.
ls -F

#This command synchronizes the local software list with the official repositories. It allows the system to know the latest available versions without installing anything.
sudo apt update

#This instruction is responsible for downloading and installing the latest versions of the programs.
sudo apt upgrade

#This command specifically downloads and installs the parted program on the system. This tool is essential for the user to manage, create, and resize disk partitions.
sudo apt install parted

#It examines and displays in an orderly manner on the screen the structure, formats, and partitions of all disks connected to the computer.
sudo parted -l && echo -e "\n--\n" && lsblk -f && echo -e "\n--\n"
&& #This means that the command on the right will only be executed if the command on the left finished successfully (without errors). (AND)
#msdos = mbr

#This command is used to quickly determine if the system booted in UEFI mode or traditional BIOS mode.
[ -d /sys/firmware/efi ] && echo "UEFI" || echo "BIOS"
|| #(OR) They mean "or else" (it's the opposite of &&). If the initial check fails (the folder doesn't exist), it skips the previous step and prints "BIOS".

#It is used to display detailed information and the internal status of a specific file.
stat test.txt

  File: test.txt
  Size: 11              Blocks: 8          IO Block: 4096   regular file
Device: 0,45    Inode: 715140      Links: 1
Access: (0644/-rw-r--r--)  Uid: ( 1000/codespace)   Gid: ( 1000/codespace)
Access: 2026-04-02 13:52:13.141825130 +0000
Modify: 2026-04-02 13:52:04.358824937 +0000
Change: 2026-04-02 13:52:04.358824937 +0000
 Birth: 2026-04-02 13:52:04.358824937 +0000

 #Despite its small size, the system compulsorily reserves a base storage block of 4096 bytes for it, 
 #which perfectly illustrates internal fragmentation, where the large remaining space within that assigned "box" is left empty and wasted.