eval "$(nodenv init -)"


# Variables
# Syntax highlighting for man using bar
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Disable gatekeeper when opening casks for the first time
export HOMEBREW_CASK_OPTS="--no-quarantine"


# Aliases
# alias ls='ls -lAFh'
alias ls='exa -laFh --git'
alias exa='exa -laFh --git'


# Prompt
PROMPT='
%1~ %L %# '

RPROMPT='%*'


# Functions
function mkcd () {
	mkdir -p "$@" && cd "$_"
}
