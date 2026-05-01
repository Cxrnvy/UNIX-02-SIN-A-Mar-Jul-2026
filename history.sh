#Lists the contents of the current working directory in a basic format.
ls

#Attempts to run the 'ls' command but uses uppercase letters. This will result in a "command not found" error because Linux is case-sensitive.
LS

#Lists the contents of the "Documents" directory located within the current working directory.
ls Documents/

#Triggers an easter egg in the aptitude package manager that jokingly tells the user there are no easter eggs in this program.
aptitude moo

#Lists all files and directories in long format, detailing permissions, number of links, owner, group, size, and modification timestamp.
ls -l

#Lists the contents of the current directory in reverse alphabetical order.
ls -r

#Combines long format (-l) and reverse order (-r) to display detailed file information sorted backwards alphabetically.
ls -l -r

#Functions exactly the same as the previous command, but combines the flags into a single argument for efficiency.
ls -lr

#Identical to the previous command. The order of the combined flags does not affect the output.
ls -rl

#Adds one level of verbosity (-v) to the aptitude easter egg, triggering the next response in the hidden joke sequence.
aptitude -v moo

#Adds two levels of verbosity (-vv) to the aptitude easter egg to progress the joke further.
aptitude -vv moo

#Adds three levels of verbosity (-vvv) to the aptitude easter egg, revealing the final ASCII art cow.
aptitude -vvv moo

#Prints the absolute path of the current Working Directory (Print Working Directory), showing exactly where the user is in the filesystem hierarchy.
pwd

#Attempts to change the directory to "School Art/". Because there is a space and no quotes or escape characters (like 'School\ Art/' or "School Art/"), the shell treats "School" and "Art/" as separate arguments, which typically results in an error.
cd School Art/

#Changes the current working directory to the "School" directory located within the current path.
cd School

#Changes the current working directory to the "Art" directory located within the current path.
cd Art

#Changes the current working directory to the root directory (/), which is the absolute top level of the Linux filesystem.
cd /

#Lists the contents of the current directory, which is now the root (/) directory.
ls

#Lists the contents of the "workspaces" directory located within the current path.
ls workspaces/

#Changes the current directory to a specific class or project folder path relative to the current location.
cd workspaces/UNIX-02-SIN-A-Mar-Jul-2026/

#Lists the contents of the newly accessed workspace directory.
ls

#Outputs the current terminal session's command history and redirects (>) it to overwrite or create a file named "history.sh".
history > history.sh

#Changes the current working directory to the parent directory, moving one level up in the filesystem hierarchy.
cd ..

#Changes the current working directory back to the current user's home directory (represented by the tilde ~).
cd ~

#Lists the contents of the system's log directory, where applications and the OS store log files.
ls /var/log/

#Lists the contents of the /var/log/ directory in long format (-l) and sorts the output by modification time (-t), displaying the newest files first.
ls -lt /var/log/

#Lists the contents of /var/log/ in long format (-l) and also displays the allocated size of each file in blocks (-s).
ls -l -s /var/log/

#Lists the contents of /var/log/ in long format (-l), sorts them by file size (-S), and reverses the output (-r) so that the largest files appear at the very bottom of the terminal.
ls -lSr /var/log/

#Lists the contents of the /var/log/ directory in reverse alphabetical order.
ls -r /var/log/

#Switches the current session to the root superuser account and starts a login shell, loading all of root's environment variables (like PATH and HOME).
su -

#Functionally identical to 'su -'; it logs in as the root user with a complete login environment.
su -l

#The extended, verbose version of 'su -l', executing a full login shell as the root user.
su --login

#Executes the "Steam Locomotive" program. This is a common joke package installed to display an ASCII train moving across the screen when a user accidentally mistypes 'ls'.
sl

#Attempts to switch the current user session to a user account named "sl".
su sl

#Executes the 'sl' (Steam Locomotive) joke program with administrator privileges.
sudo sl

#Changes the directory using an absolute path (starting from root) directly to the specific UNIX workspace folder.
cd /workspaces/UNIX-02-SIN-A-Mar-Jul-2026/

#Displays detailed information (permissions, owner, size, date) specifically for the file named "filesystem.sh".
ls -l filesystem.sh 

#Modifies the permissions of "filesystem.sh" to grant execution rights (+x) specifically to the user (u) who owns the file.
chmod u+x filesystem.sh 

#Lists the directory contents in long format, likely used here to visually verify the recent permission changes.
ls -l

#Displays the detailed information for "filesystem.sh" again to confirm the 'x' (execute) permission has been successfully applied to the user.
ls -l filesystem.sh 

#Executes the script named "hello.sh" located in the current working directory (represented by ./).
./hello.sh

#Changes the ownership (chown) of "filesystem.sh" to the 'root' user, using 'sudo' because standard users cannot give away files to root.
sudo chown root filesystem.sh 

#Displays the file details to verify that the owner column now says 'root' instead of the original user.
ls -l filesystem.sh 

#Executes the "filesystem.sh" script located in the current working directory.
./filesystem.sh

#Concatenates and prints the entire contents of the "README.md" file directly to the terminal screen.
cat README.md

#Prints the first 10 lines (which is the default behavior) of the "README.md" file to the terminal.
head README.md 

#Prints the first 10 lines of the "filesystem.sh" script.
head filesystem.sh 

#Prints the last 10 lines (which is the default behavior) of the "filesystem.sh" script.
tail filesystem.sh 

#Prints exactly the first 5 lines (-n 5) of the "filesystem.sh" script.
head -n 5 filesystem.sh 

#Prints exactly the last 5 lines (-n 5) of the "filesystem.sh" script.
tail -n 5 filesystem.sh 

#Copies the system's user account information file (/etc/passwd) into the current working directory (represented by the dot .).
cp /etc/passwd .

#Uses the "Data Duplicator" (dd) tool to copy raw data block-by-block. It takes input (if) from the first storage drive (/dev/sda), writes it to the output (of) on the second storage drive (/dev/sdb), using a block size (bs) of 1 Megabyte, and stops after copying 50 blocks (count). This copies exactly 50MB of raw partition data.
dd if=/dev/sda of=/dev/sdb bs=1M count=50

#Saves the final command history, including all recent actions, into "history.sh", overwriting the file once more.
history > history.sh