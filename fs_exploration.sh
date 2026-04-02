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

