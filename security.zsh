umask
# Display the current file mode creation mask to see default system permissions.
touch archivo1
# Create an empty file named archivo1 to test the initial default permission settings.
mkdir directorio1
# Create a new folder named directorio1 to check the initial default directory permissions.
ls -l
# List all files and directories in long format to audit owners and permission bits.
umask 027
# Change the mask to 027 so new files get 640 (rw-r-----) and folders get 750 (rwxr-x---).
touch archivo2
# Create a second test file to verify that the new 027 mask is being applied correctly.
mkdir diretorio2
# Create a second test directory to confirm the new restricted permissions are active.
sudo apt-get update
# Synchronize the local package index with the remote repositories using root privileges.
apt-get update
# Attempt to refresh the package list (usually requires sudo to succeed on most systems).
apt-get upgrade
# Install the latest available versions of all currently installed software packages.
apt-get install acl
# Download and install the Access Control List utility for granular permission management.
chown -R $(whoami) .
# Recursively change the owner of the current directory and all its content to your user.
setfacl -bnR .
# Remove all extended ACL entries and the plus sign (+) to restore standard permissions.
umask 027
# Re-set the creation mask to 027 to ensure the security policy is still active.
ls -l
# Perform a secondary check of the directory to verify the cleanup of ACLs and owners.
touch archivo3
# Create a final test file to confirm the 027 mask still works after system updates.
mkdir directorio3
# Create a final test directory to ensure folder permissions remain consistent at 750.
ls -l
# Execute a final comprehensive audit of all files to document the resulting security state.
umask 077
# Set the file mode creation mask to 077 to enforce maximum privacy, ensuring that all newly created files and directories are accessible only by the owner while denying all permissions to the group and others.
touch secreto.txt
# Create a new, empty file named "secreto.txt" to demonstrate how the highly restrictive 077 mask automatically protects sensitive data from being read or modified by any other user on the system.
mkdir privado
# Initialize a new directory called "privado" to verify that the current umask settings prevent any users other than the creator from listing, entering, or modifying the contents of the folder.
umask 22
# Set the file mode creation mask to 022, which is the standard system default that allows the owner full read and write access while restricting the group and others to read-only access for files and read-and-execute access for directories.
echo "Hola" > mi_archivo
# Generate a text file named 'mi_archivo' containing the string 'Hola' using output redirection, a process that relies on the system's current umask settings to determine the file's security bits at the moment of creation.
ls -l mi_archivo
# Execute a detailed long-format listing of the newly created file to inspect its metadata, specifically confirming that the permissions bits accurately reflect the 'rw-r--r--' (644) state expected from a 022 mask.
groups
#Display the names of the groups the current user belongs to, which is essential for understanding the user's collective access rights and privileges over shared system resources.
groupadd grupo_test
#Create a new system group named "grupo_test" to allow for the categorization of users and the management of shared file permissions across multiple accounts.
groups
#Re-examine the current user's group memberships to verify if the environment reflects any recent changes or to confirm which groups are active in the current shell session.
touch comun
#Create a new empty file named "comun" which will automatically be assigned to the user's primary group, serving as a baseline for testing group-level access and ownership.
ls -l comun
#Execute a detailed long-format listing of the file "comun" to specifically inspect the group ownership field and verify how the group permission bits (r, w, x) are currently configured.    1  umask
useradd -m -s /usr/bin/zsh cesar
# Create a new system user named "cesar" with the -m flag to generate a home directory and the -s flag to set Zsh as the default login shell.
cat /etc/group
# Display the contents of the group configuration file to view a complete list of all existing groups and the users currently assigned to them.
usermod -a -G grupo_test cesar
# Update the user "cesar" to include them in "grupo_test," ensuring they have the shared permissions associated with that specific group.
chgrp grupo_test comun
# Change the group ownership of the file "comun" to "grupo_test," allowing all members of that group to interact with the file based on group-level permissions.
ls -l comun
# List the file "comun" in long format to verify that the group ownership has been successfully updated and to inspect the resulting access rights.
chown cesar:grupo_test mi_archivo
#Change both the user and group ownership of "mi_archivo" in a single command, assigning the file to the user "cesar" and the group "grupo_test" to manage multi-level access control.
mkdir -p proyecto/sub
# Create a nested directory hierarchy using the -p flag to ensure that all necessary parent directories are automatically generated in a single command.
touch proyecto/readme proyecto/sub/datos
# Generate multiple empty files at different levels of the directory tree to populate the project structure for testing file-level ownership and access.
chown -R cesar:grupo_test proyecto
# Recursively change the ownership of the "proyecto" directory and every file or subfolder within it to the user "cesar" and the group "grupo_test" simultaneously.
ls -lR proyecto
# Execute a recursive long-format listing to perform a comprehensive audit of the entire directory tree, confirming that ownership and permissions are correctly inherited by all items.

id
#view all users on the system
cat/etc/passwd | head -10
#View the 10 firsts lines in passwd file 

#View the UID and GID of actual user
id -u
#User ID
id -g
#Group ID principal 
id -G
#all IDs Group

cat /etc/group | grep root
#grep is used to search for lines that contain a specific pattern within one or more files.

#Create a new directory named 'proyecto_unix' inside the user's home directory
mkdir ~/proyecto_unix/

#List all contents of the new directory in long format (-l), including hidden files (-a)
ls -la ~/proyecto_unix/

#groupadd [options] group_name
sudo groupadd desarrolladores
#Create a simple group
sudo groupadd -g 2000 operaciones
#System group (GID < 1000)
sudo groupadd --system servicios_web
#Specific GID

grep "desarrolladores\|operaciones\|servicios_web" /etc/group
#Verify that they were created (using basic grep, requires escaping the pipe \|)
grep "desarrolladores|operaciones|servicios_web" /etc/group
#Verify using -E (Extended regular expressions, cleaner syntax)
grep "GID_MIN\|GID_MAX\|SYS_GID" /etc/login.defs
#The system groups has less GID to the minimun user

#Create groups with addgroup
sudo addgroup diseño
sudo addgroup --gid 2100 marketing
sudo addgroup --system cache_web

#Verify
grep "diseño\|marketing\|cache_web" /etc/group

#View which groups the actual user belongs
groups
id

#Add user to a group with usermod (low level)
sudo usermod -aG desarrolladores $USER 
sudo usermod -aG diseño $USER 

#Create a temp group for the demo
sudo groupadd grupo_temporal
sudo usermod -aG grupo_temporal (USER)
id root

#Now the fail: usermod without -a
sudo usermod -G desarrolladores (USER)
#This removes all child groups except developers.
