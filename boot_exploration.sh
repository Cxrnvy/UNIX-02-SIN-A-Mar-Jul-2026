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
