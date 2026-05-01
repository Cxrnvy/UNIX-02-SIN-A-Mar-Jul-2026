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
