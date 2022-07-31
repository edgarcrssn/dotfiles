echo 'Load .zshrc'

# Variables
# Syntax highlighting for man using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"
export NULLCMD=bat


# Aliases
alias ls='exa -laFh --git'
alias exa='exa -laFh --git'
alias bbd='brew bundle dump --force --describe'
alias trail='<<<${(F)path}'


# Prompt
PROMPT='
%1~ %L %# '

RPROMPT='%*'


# Functions
function mkcd () {
	mkdir -p "$@" && cd "$_"
}
