# .bashrc



# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
#IPADDRESS=$(ifconfig | grep -A 1 eth0 | grep inet | cut -c 9- | sed 's/  / /g' | cut -d ' ' -f 2)
IPADDRESS=$(hostname -I) | cut -d ' ' -f 1

if [ "$BACKGROUND" = dark ]; then
PS1="\n\[\e[32;1m\](\[\e[37;1m\]\u-$(hostname)\[\e[32;1m\])-(\[\e[37;1m\]jobs:\j\[\e[32;1m\])-(\[\e[37;1m\]\w\[\e[32;1m\])\n(\[\e[37;1m\]!\!\[\e[32;1m\])\[\e[37;1m\]\[\e[32;1m\]-(\[\e[37;1m\]$IPADDRESS\[\e[32;1m\])-(\[\e[37;1m\]\T\[\e[32;1m\])\[\e[32;1m\]$ \[\e[0m\]"
#echo "I'm inside dark background"
else
PS1="\n\[\e[31;1m\](\[\e[34;1m\]\u-$(hostname)\[\e[31;1m\])-(\[\e[34;1m\]jobs:\j\[\e[31;1m\])-(\[\e[34;1m\]\w\[\e[31;1m\])\n(\[\e[34;1m\]!\!\[\e[31;1m\])\[\e[34;1m\]\[\e[31;1m\]-(\[\e[34;1m\]$IPADDRESS\[\e[31;1m\])-(\[\e[34;1m\]\T\[\e[31;1m\])\[\e[32;1m\]$ \[\e[0m\]"
#echo "I'm inside light background"
fi
#for lightline to display properly
export TERM=xterm-256color
