# Aliases

alias shut='sudo poweroff'

alias ccompile='gcc -o main -Wall -Wformat -Wextra *.c'
alias scompile='scss style.scss > style.css'

alias sshroot='ssh root@vincentpasquier.net'
alias sshsv1='ssh root@sv1.lan'
alias sshsv2='ssh root@sv2.lan'
alias sshmjollnir='ssh root@nat.lan'

alias gitfetch='git fetch --all && git reset --hard origin/master'

# Colored bash

export TERM=xterm256-color

force_color_prompt=yes

if [ $EUID -eq 0 ]; then
	PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
	PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
fi


# Bash Completion

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi


# Paths, includes /opt/xxx/bin

PATH=$PATH:~/bin
for path in $(find /opt/ -maxdepth 3 -name bin); do PATH=$PATH:$path; done
export PATH


# Locale

export LC_ALL=en_US.UTF-8
export LANG=$LC_ALL
export LANGUAGE=$LC_ALL


# Misc

source ~/bin/acd_func.sh
export EDITOR=vim

if ! echo "$LD_LIBRARY_PATH" | grep -q '/usr/local/lib'; then
	export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
fi



# Local

if [ -f ~/.bashrc.local ]; then
	source ~/.bashrc.local 
fi

