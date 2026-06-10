# ============================================================================
#  Dockerfile
# ============================================================================
# A Dockerfile is a text file with step-by-step instructions that
# Docker (or Codespaces) reads from top to bottom to build a
# "image". An image is like a frozen mold of a ready-to-use Linux system
#; every time you open the Codespace, a
# "container" is created from that mold.

# Analogy: the image is the PLAN, the container is the HOUSE built
# with that plan. You can build many identical houses from a single
# plan, and if you destroy one house, the plan remains intact.

# Each instruction (FROM, ENV, RUN...) creates a "layer". Docker caches
# these layers: if you don't change the first few lines, it doesn't rebuild them
# and the next build is almost instantaneous.
# ============================================================================


# a. FROM kalilinux/kali-rolling:latest
# The Kali Linux base image is for use in security testing with a specially-created operating system to create the environment where the vulnerability testing can take place (See BHB Chapter 3.) 
# Because this will pull the latest rolling release of the base image, it will always be up-to-date when you build it.
# Docker uses layers to cache images, therefore the order in which instructions are written on the Dockerfile matters greatly! 
# Placing this instruction as the very first instruction is important because if any higher layer changes (i.e., a later version of the same base image), 
# the caching for every other layer that followed it will also be invalidated and you would have to start over with a very slow build.
FROM kalilinux/kali-rolling:latest


# b. ENV
# When the system loads certain environment variables into the system, 
# they are used to load certain configurations variables that will allow programs to reference those values while they are executing (BHB Ch. 1) [cite: 557, 558].
# DEBIAN_FRONTEND=non-interactive prevents the Apt package manager from halting an automated build to wait for a user to provide input.
# LANG and LC_ALL define the localization of the system to allow it to support the character encoding known as UTF-8.
# TERM tells the system that the terminal in use supports the 256 colors function.
ENV DEBIAN_FRONTEND=noninteractive \
    LANG=es_ES.UTF-8 \
    LC_ALL=es_ES.UTF-8 \
    TERM=xterm-256color

# c. debconf-set-selections
# Using a pipe allows us to pre-answer the wireshark install prompt, as described in BHB Chapter 1, 
# thus allowing Wireshark to complete the build without waiting for the user to answer whether or not non-root users are allowed to capture traffic. 
# Pre-answer "no" continues the build.
RUN echo "wireshark-common wireshark-common/install-setuid boolean false" \
    | debconf-set-selections


# d. The large RUN apt-get block
# Group apt-get update, apt-get install and apt-get clean-up into a single RUN command. 
# Each RUN creates a new layer; by combining multiple commands into one, we create less layers and save size in the final image. (BHB Ch 3).
# Use && between each command to ensure that the next command will only run if the previous one was successful. (BHB Ch 1).
# Use --no-install-recommends in order to prevent installing bloatware.
# The tools being installed are gawk, sed and grep for filter and text-processing purposes (BHB Ch 2; 
# nmap and tcpdump are also included to probe networks.

# e, f. sed -i and locale-gen
# We will be using the stream editor 'sed' to perform an inline replacement, 
# specifically uncommenting the Spanish locale directly inside /etc/locale.gen (BHB Ch. 2) 
# and then having locale-gen compile it.

# g. apt-get clean
# The apt cache is cleared and the previously downloaded package lists deleted using the apt-get clean command. 
# Deleted files remain in the old Docker layer if they aren't deleted in the same RUN step.
RUN apt-get update && apt-get install -y --no-install-recommends \
    neovim vim zsh bash-completion \
    perl make gawk sed grep \
    coreutils findutils procps less tree jq \
    man-db manpages manpages-posix \
    curl wget git git-lfs ca-certificates locales \
    shellcheck nmap masscan tcpdump tshark \
    netcat-traditional socat dnsutils whois traceroute mtr-tiny iproute2 net-tools iputils-ping \
    tor torsocks proxychains4 obfs4proxy httpie \
    && sed -i 's/# es_ES.UTF-8/es_ES.UTF-8/' /etc/locale.gen \
    && locale-gen \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# h. SHELL
# By default, Docker uses /bin/sh as the default shell, but this does not support things like arrays, [[ ]], 
# or process substitution. When running further RUN commands under bash instead, 
# it will allow me to use all of the syntax I’m used to from terminal (BHB Ch. 1). The flag -c tells bash to execute commands from a string.
SHELL ["/bin/bash", "-c"]

# i. WORKDIR
# This sets the default working directory for the container to /workspaces, 
# where this repo gets mounted when it first gets created, which will cause me to be placed directly 
# into the project folder instead of the root directory when I get started. Docker will also create this directory for me automatically if it does not exist.
WORKDIR /workspaces

# j. RUN git config
# This will configure Git for all users in the container at the system level. By adding safe.directory '*', 
# I will prevent errors when the UID of the user who created the repo and the UID of the user in the container are different (causing ownership mismatch). 
# The pull.rebase false setting maintains the default merge behaviour. Finally, git lfs install --system enables git-lfs (Large File Storage), which is used to track large binary files such as models and datasets on a global basis.
RUN git config --system --add safe.directory '*' \
    && git config --system init.defaultBranch main \
    && git config --system pull.rebase false \
    && git lfs install --system

# k. RUN chsh
#RUN chsh (the Change Shell command) will change the user's default login shell in the /etc/passwd file. 
# I will set it so that every time a terminal session starts in the container, Zsh will be launched instead of bash. 
# This has the same effect as running a manual chsh in a Linux terminal (BHB Ch. 1); however, I use this installation 
# step to avoid having to manually run chsh for root every time.
RUN chsh -s /usr/bin/zsh root

# l. here-document (cat >> ... <<'EOF')
# Here-docs allow me to send multiple lines of text to a command without doing it interactively (BHB Ch. 1). 
# I will do >> for appending rather than overwriting to the .zshrc file. 
# The PROMPT variable will be used to format the shell prompt to show my name, the current working directory, 
# and either a green checkmark/ red cross followed by the exit code depending on whether or not the last command executed successfully.
RUN cat >> /root/.zshrc <<'EOF'
# ===== Validates if the last command ran successfully =====
PROMPT='%F{cyan}[Cesar-Arciniegas]%f %F{yellow}%1~%f %(?.%F{green}✓.%F{red}✗ %?)%f %# '
EOF

# m. CMD will define the command that will run when the container is run (or started), 
# it will be different than RUN because RUN executes at build time to place the command 
# into the image as part of preparing the image and CMD executes at run time due to either the "docker run" 
# command or attaching to the container via devcontainer so passing the string "/usr/bin/zsh" will run a Zsh 
# interactive session and that is why the terminal will be operable without any further setup after the container is started.
CMD ["/usr/bin/zsh"]
