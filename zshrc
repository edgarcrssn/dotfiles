eval "$(nodenv init -)"


# Variables
# Syntax highlighting for man using bar
export MANPAGER="sh -c 'col -bx | bat -l man -p'"


# Aliases
alias ls='ls -lAFh'


# Prompt
PROMPT='
%1~ %L %# '

RPROMPT='%*'


# Functions
function mkcd () {
	mkdir -p "$@" && cd "$_"
}
