# Aliases

alias shut='sudo poweroff'

alias ccompile='gcc -o main -Wall -Wformat -Wextra *.c'
alias scompile='scss style.scss > style.css'

alias sshroot='ssh root@vincentpasquier.net'
alias sshsv1='ssh root@sv1.lan'
alias sshsv2='ssh root@sv2.lan'
alias sshmjollnir='ssh root@nat.lan'

alias gitfetch='git fetch --all && git reset --hard origin/master'

alias diff-x='diff --suppress-common-lines --tabsize 4 -W $(tput cols) -y'
