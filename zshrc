eval "$(nodenv init -)"


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
