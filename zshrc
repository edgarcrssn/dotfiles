eval "$(nodenv init -)"


# Aliases
alias ls='ls -lAFh'


# Prompt
PROMPT='/Users/edgarcresson/.dotfiles/zshrc
%1~ %L %# '

RPROMPT='%*'


# Functions
function mkcd () {
	mkdir -p "$@" && cd "$_"
}
