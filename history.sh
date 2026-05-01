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