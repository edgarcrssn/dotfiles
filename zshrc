echo 'Load .zshrc'

# Variables
# Syntax highlighting for man using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"
export NULLCMD=bat
export N_PREFIX="$HOME/.n"
export PREFIX="$N_PREFIX"


# Add n (Node version manager)
export PATH="$PATH:$N_PREFIX/bin"


# Aliases
alias ls='exa -laFh --git'
alias exa='exa -laFh --git'
alias bbd='brew bundle dump --force --describe'
alias trail='<<<${(F)path}'
alias rm=trash


# Prompt
PROMPT='
%1~ %L %# '

RPROMPT='%*'


# Functions
function mkcd () {
	mkdir -p "$@" && cd "$_"
}
