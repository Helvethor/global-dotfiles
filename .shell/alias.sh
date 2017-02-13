# Aliases

alias shut="echo Y\'a sure \'bout that\? && read && sudo systemctl poweroff"
alias gitfetch='git fetch --all && git reset --hard origin/master'
alias diff-x='diff --suppress-common-lines --tabsize 4 -W $(tput cols) -y'
