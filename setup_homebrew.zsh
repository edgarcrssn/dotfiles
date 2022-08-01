#!/usr/bin/env zsh

echo "\n<<< 🍺 Starting Homebrew Setup 🍺 >>>\n"

if exists brew; then
  echo "ℹ️  Homebrew is already installed.\n"
else
  echo "⏳ Installing Homebrew...\n"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "⏳ Installing packages and applications using brew..."
brew bundle --verbose

echo "\n<<< 🍺 Ending Homebrew Setup 🍺 >>>\n"
