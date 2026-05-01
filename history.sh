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

