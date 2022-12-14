#!/usr/bin/env zsh

echo "\n<<< ğ Starting Node Setup ğ >>>\n"

# Ask for the administrator password upfront
sudo -v
# Keep-alive: update existing `sudo` time stamp until script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &



# Node versions are managed with 'n', which is in the Brewfile.
if exists node; then
  echo "â¹ï¸  Node $(node -v) & NPM $(npm -v) are already installed."
else
  echo "â³ Installing Node & NPM (lts and latest versions) using n (version manager)..."
  n lts
  n latest
fi


echo "\nâ³ Installing some global NPM packages..."

if exists pnpm; then
  echo "\tâ¹ï¸  pnpm $(pnpm -v) is already installed."
else
  echo "\tâ³ Installing pnpm using npm..."
  npm i -g pnpm
fi

if exists trash; then
  echo "\tâ¹ï¸  trash-cli $(trash --version) is already installed."
else
  echo "\tâ³ Installing trash-cli using npm..."
  npm i -g trash-cli
fi

echo "\nâ The global NPM packages have been successfully installed:"
npm list -g --depth=0

echo "\n<<< ğ Ending Node Setup ğ >>>\n"
