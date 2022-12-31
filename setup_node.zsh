#!/usr/bin/env zsh

echo "\n<<< 💎 Starting Node Setup 💎 >>>\n"

# Ask for the administrator password upfront
sudo -v
# Keep-alive: update existing `sudo` time stamp until script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &



# Node versions are managed with 'n', which is in the Brewfile.
if exists node; then
  echo "ℹ️  Node $(node -v) & NPM $(npm -v) are already installed."
else
  echo "⏳ Installing Node & NPM (lts and latest versions) using n (version manager)..."
  n lts
  n latest
fi


echo "\n⏳ Installing some global NPM packages..."

if exists pnpm; then
  echo "\tℹ️  pnpm $(pnpm -v) is already installed."
else
  echo "\t⏳ Installing pnpm using npm..."
  npm i -g pnpm
fi

if exists trash; then
  echo "\tℹ️  trash-cli $(trash --version) is already installed."
else
  echo "\t⏳ Installing trash-cli using npm..."
  npm i -g trash-cli
fi

echo "\n✅ The global NPM packages have been successfully installed:"
npm list -g --depth=0

echo "\n<<< 💎 Ending Node Setup 💎 >>>\n"
