alias apt='sudo apt-get'
alias shut='sudo poweroff'

alias prog='cd /home/helvethor/ownCloud/heia/futur_ingenieur/programmation/'
alias tele='cd /home/helvethor/ownCloud/heia/futur_ingenieur/teleinformatique/'
alias techi='cd /home/helvethor/ownCloud/heia/futur_ingenieur/technologies_internet/'
alias techn='cd /home/helvethor/ownCloud/heia/futur_ingenieur/technique_num_elec/'

alias ccompile='gcc -o main -Wall -Wformat -Wextra *.c'
alias scompile='scss style.scss > style.css'

alias sshpi='ssh pi@vincentpasquier.net'
alias sshroot='ssh root@vincentpasquier.net'
alias sshloki='ssh -p 6022 root@vincentpasquier.net'

alias gitfetch='git fetch --all && git reset --hard origin/master'

alias teamspeak='~/downloads/software/app/TeamSpeak3-Client-linux_amd64/ts3client_runscript.sh'

PATH=$PATH:~/bin
PATH=$PATH:/opt/intellij_idea/bin:
export PATH

source ~/bin/acd_func.sh
