# Misc

source ~/bin/acd_func.sh
export EDITOR=vim

if ! echo "$LD_LIBRARY_PATH" | grep -q '/usr/local/lib'; then
	export LD_LIBRARY_PATH=/usr/local/lib
fi
