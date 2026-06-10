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


# FROM kalilinux/kali-rolling:latest
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
# TERM tells the system that the terminal in use supports the 256 colors function.D
ENV DEBIAN_FRONTEND=noninteractive \
    LANG=es_ES.UTF-8 \
    LC_ALL=es_ES.UTF-8 \
    TERM=xterm-256color

# c.
# Using a pipe allows us to pre-answer the wireshark install prompt, as described in BHB Chapter 1 (cc. 992), 
# thus allowing Wireshark to complete the build without waiting for the user to answer whether or not non-root users are allowed to capture traffic. 
# Pre-answer "no" continues the build.
RUN echo "wireshark-common wireshark-common/install-setuid boolean false" \
    | debconf-set-selections


# d. The large RUN apt-get block
# Group apt-get update, apt-get install and apt-get clean-up into a single RUN command. 
# Each RUN creates a new layer; by combining multiple commands into one, we create less layers and save size in the final image. (BHB Ch 3) [cite2160][cite2161].
# Use && between each command to ensure that the next command will only run if the previous one was successful. (BHB Ch 1) [cite925].
# Use --no-install-recommends in order to prevent installing bloatware.
# The tools being installed are gawk, sed and grep for filter and text-processing purposes (BHB Ch 2) [cite1588][cite1594][cite1619][cite1640]; 
# nmap and tcpdump are also included to probe networks.
RUN apt-get update && apt-get install -y --no-install-recommends \
    neovim vim zsh bash-completion \
    perl make gawk sed grep \
    coreutils findutils procps less tree jq \
    man-db manpages manpages-posix \
    curl wget git git-lfs ca-certificates locales \
    shellcheck nmap masscan tcpdump tshark \
    netcat-traditional socat dnsutils whois traceroute mtr-tiny iproute2 net-tools iputils-ping \
    tor torsocks proxychains4 obfs4proxy httpie \

# e, f. 
# sed -i and locale-gen
# We will be using the stream editor 'sed' to perform an inline replacement, 
# specifically uncommenting the Spanish locale directly inside /etc/locale.gen (BHB Ch. 2) 
# and then having locale-gen compile it.
 && sed -i 's/# es_ES.UTF-8/es_ES.UTF-8/' /etc/locale.gen \
 && locale-gen \
 \

# g.
# The apt cache is cleared and the previously downloaded package lists deleted using the apt-get clean command. 
# Deleted files remain in the old Docker layer if they aren't deleted in the same RUN step.
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*


# ----------------------------------------------------------------------------
# SHELL: qué intérprete usar en los siguientes RUN
# ----------------------------------------------------------------------------
# Por defecto Docker usa /bin/sh (un shell más limitado y antiguo). Lo
# cambiamos a bash por si agregamos más instrucciones con sintaxis
# moderna (arrays, [[ ]], etc.).
SHELL ["/bin/bash", "-c"]


# ----------------------------------------------------------------------------
# WORKDIR: directorio de trabajo al entrar al contenedor
# ----------------------------------------------------------------------------
# Codespaces siempre monta el código del repositorio en
# /workspaces/<nombre-del-repo>. Establecer /workspaces aquí hace que las
# terminales se abran cerca de nuestros archivos del curso.
WORKDIR /workspaces

# Configuración de Git para el contenedor:
# - safe.directory *: confía en cualquier repo montado (necesario porque
#   /workspaces/... tiene un UID distinto al de root dentro del container).
# - init.defaultBranch main: evita warnings de "master vs main" en git init.
# - pull.rebase false: merge por defecto al hacer pull (más intuitivo)
# - git lfs install --system: registra los hooks de LFS globalmente para
#   que, si un repo los necesita, funcionen sin sorpresas.
RUN git config --system --add safe.directory '*' \
 && git config --system init.defaultBranch main \
 && git config --system pull.rebase false \
 && git lfs install --system

# ----------------------------------------------------------------------------
# CMD: comando que se ejecuta por defecto al arrancar el contenedor
# ----------------------------------------------------------------------------
# Lanza una shell bash interactiva. Codespaces la sobrescribe con su
# propia terminal integrada de VS Code, pero es buena práctica dejarla
# definida para que la imagen sea usable también con Docker puro.
# Prompt del curso para bash
# Cambiar shell de login de root a zsh dentro de la imagen,
# para que chsh ya no haga falta y todo sea consistente.
RUN chsh -s /usr/bin/zsh root

# Prompt institucional para los y las estudiantes del curso
RUN cat >> /root/.zshrc <<'EOF'

# ===== Valida si un comando fue ejecutado correctamente =====
PROMPT='%F{cyan}[Cesar-Arciniegas]%f %F{yellow}%1~%f %(?.%F{green}✓.%F{red}✗ %?)%f %# '
EOF

CMD ["/usr/bin/zsh"]