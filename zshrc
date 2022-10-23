echo 'Load .zshrc'

# Variables
# Syntax highlighting for man using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export NULLCMD=bat
export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"

# Add locations to $path array variable
typeset -U path

path=(
	$N_PREFIX/bin
	"/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
	$path
)


# Aliases
alias ls='exa -laFh --git'
alias exa='exa -laFh --git'
alias bbd='brew bundle dump --force --describe'
alias trail='<<<${(F)path}'
alias rm=trash
alias showdsstore='find . -name ".DS_Store" -type f'
alias rmdsstore='find . -name ".DS_Store" -type f -delete'


# Prompt
PROMPT='
%1~ %L %# '

RPROMPT='%*'


# Functions
function mkcd () {
	mkdir -p "$@" && cd "$_"
}

# Plugins
# source /opt/homebrew/share/zsh-history-substring-search/zsh-history-substring-search.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
