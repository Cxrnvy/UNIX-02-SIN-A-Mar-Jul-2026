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
#Execute a detailed long-format listing of the file "comun" to specifically inspect the group ownership field and verify how the group permission bits (r, w, x) are currently configured.