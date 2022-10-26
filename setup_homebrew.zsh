#!/usr/bin/env zsh

echo "\n<<< 🍺 Starting Homebrew Setup 🍺 >>>\n"

# Ask for the administrator password upfront
sudo -v
# Keep-alive: update existing `sudo` time stamp until script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &



if exists brew; then
  echo "ℹ️  Homebrew is already installed.\n"
else
  echo "⏳ Installing Homebrew...\n"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

echo "⏳ Installing formulae and casks using brew..."
sudo softwareupdate --install-rosetta # Microsoft Teams requires Rosetta 2 to be installed.
brew bundle --verbose

echo "\n✅ The following formulae and casks have been successfully installed:"
brew list

echo "\n<<< 🍺 Ending Homebrew Setup 🍺 >>>\n"
