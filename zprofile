echo 'Load .zprofile'

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(nodenv init -)"

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
