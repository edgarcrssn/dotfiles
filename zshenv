echo "Load .zshenv"

export N_PREFIX="$HOME/.n"
export PREFIX="$N_PREFIX"
export HOMEBREW_CASK_OPTS="--no-quarantine"

function exists () {
	# 'command -v' is similar to 'which'
	command -v $1 >/dev/null 2>&1
	# More explicitly written:
	# command -v $1 1>/dev/null 2>/dev/null
}