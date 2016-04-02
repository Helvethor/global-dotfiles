alias apt-get='sudo apt-get'
alias shut='sudo poweroff'
alias bashsource='source /$USER/.bashrc'

alias prog='cd /home/helvethor/ownCloud/heia/futur_ingenieur/programmation/'
alias tele='cd /home/helvethor/ownCloud/heia/futur_ingenieur/teleinformatique/'
alias techi='cd /home/helvethor/ownCloud/heia/futur_ingenieur/technologies_internet/'
alias techn='cd /home/helvethor/ownCloud/heia/futur_ingenieur/technique_num_elec/'

alias ccompile='gcc -o main -Wall -Wformat -Wextra *.c'
alias scompile='scss style.scss > style.css'

alias vimrec='vim $(find . -maxdepth 2 -iname "*.php" -o -iname "*.phtml")'	
alias flushswp="find . -maxdepth 2 -iname '*.swp' -exec rm {} \;"

alias sshpi='ssh pi@vincentpasquier.net'
alias sshroot='ssh root@vincentpasquier.net'
alias sshloki='ssh -p 6022 root@vincentpasquier.net'

alias gitfetch='git fetch --all && git reset --hard origin/master'

alias teamspeak='~/downloads/software/app/TeamSpeak3-Client-linux_amd64/ts3client_runscript.sh'

echo 1 > /tmp/test
force_color_prompt=yes
if [ "$EUID" -e 0 ]; then
	echo root >> /tmp/test
	PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
	echo not root >> /tmp/test
	PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
fi

PATH=$PATH:~/bin
PATH=$PATH:/opt/intellij_idea/bin:
export PATH

source ~/bin/acd_func.sh
export LD_LIBRARY_PATH=/usr/local/lib
