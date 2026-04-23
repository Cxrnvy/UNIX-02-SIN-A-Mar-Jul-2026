#-l (long format): Shows permissions, owner/group, size, modification date/time, and name. -a (all): Includes hidden files (those starting with ., like .bashrc). -h (human-readable): File sizes in KB, MB, GB (e.g., 1.2M) instead of raw bytes
ls -l -a -h
#This command is exactly equivalent to the previous one
#-l -a -h (separated) = -lah (combined).
ls -lah
#Create a directory literally named "-rf", using -- to indicate that it is not an option but a name.
mkdir -- -rf
#Remove the directory named "-rf", but it will only work if it is completely empty.
rmdir -- -rf 
#--depth <depth>
#           Create a shallow clone with a history truncated to the specified number of commits. Implies --single-branch unless --no-single-branch is given to fetch the histories near the
#           tips of all branches. If you want to clone submodules shallowly, also pass --shallow-submodules.
#depth: Git clones only the last n commits (reduced history); it should be noted that by default it uses a single branch and that it can be extended with --no-single-branch and --shallow-submodules.

#Grants execute permission to everyone (user, group, and others) on the file
chmod +x script.sh
#Grants execute permission only to the file's owner.
chmod u+x script.sh 
#Removes read permission from everyone (excluding the owner and group).
chmod o-r secreto.txt 
#Grants read and write permission to the user and removes all permissions for the group and others.
chmod u+rw,go-rwx privado 

#It doesn't work as expected because the redirection (>) doesn't use sudo and runs without permissions.
sudo echo "hola" > /etc/archivo_protegido
#Permiso denegado

#Write "hello" to a protected file using administrator privileges, redirecting the output so that it is not displayed on the screen.
echo "hola" | sudo tee /etc/archivo_protegido > /dev/null
#It writes to the file and also displays "hello" on the screen.
echo "hola" | sudo tee /etc/archivo_protegido

/dev/null: #It is a “special file” in Linux that discards everything sent to it; that is, any output redirected there is lost and is neither displayed nor saved.

sudo sh -c 'echo "chao" >> /etc/protected_file'
#This command executes the block as root in a small "sh" shell. This overwrites the protected file, located in the `/etc` directory (configuration files), with the command "chao".

sudo -i
#Switches you to superuser, allowing you to execute commands without `sudo`. All commands executed are in superuser mode. However, this is an initial login command, loading the official root environment.

sudo su
#Switches you to superuser, allowing you to execute commands without `sudo`. All commands executed are in superuser mode, but the original user environment is retained.

sudo su -
#Switches you to superuser, allowing you to execute commands without `sudo`. All commands executed are in superuser mode, but the `-` makes `su` a login shell.
#These last three commands change the environment variables.

echo "$HOME"
#Prints your user's home directory path (double quotes DO interpret variables).

echo '$HOME'
#Prints the literal text "$HOME" (single quotes DO NOT interpret variables).

echo '#!/bin/sh' > hola.sh
#Creates hola.sh and writes the "shebang" (indicates it's a shell script). The '>' overwrites.

echo 'echo "Hola desde mi primer script"' >> hola.sh
#Appends (>>) this command to the end of hola.sh without overwriting existing content.

cat hola.sh
#Displays the full content of hola.sh in the terminal.

ls -l hola.sh
#Shows the file's details and permissions.

./hola.sh
#Executes the script in the current directory. 
#(Note: This will give a "Permission denied" error unless we run `chmod +x hola.sh` first to make it executable).

ls /etc
#Lists the contents of the /etc directory (where system configurations are stored).

touch /etc/prueba.txt
#Creates an empty file named prueba.txt in the /etc directory. 
#(Note: This will give a "Permission denied" error because you need to use 'sudo' to write in /etc).

mkdir ~/mi_carpeta
#Creates a new directory (folder) named "mi_carpeta" inside your home directory (~).

sudo apt install cowsay
#Downloads and installs the fun program 'cowsay' using the APT package manager.
#(Note: This will also give an error unless you use 'sudo apt install cowsay', as installing programs requires administrator privileges).