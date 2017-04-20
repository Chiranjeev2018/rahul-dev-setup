LS_COLORS='di=94:fi=0:ln=96:pi=5:so=5:bd=5:cd=5:or=31:mi=31:ex=32:*.rpm=90'
export LS_COLORS
alias ls='ls --color'
export PS1='[$(whoami)@$(hostname):${PWD##*/}]$ '
export HISTCONTROL="ignoreboth:erasedups"
#automating keychain
[ -z "$HOSTNAME" ] && HOSTNAME=`uname -n`
keychain -q ~/.ssh/id_rsa
. ~/.ssh-agent-${HOSTNAME}
