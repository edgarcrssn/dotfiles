#!/usr/bin/env zsh

echo "\n<<< Starting Node Setup >>>\n"

# Node versions are managed with 'n', which is in the Brewfile.
if exists node; then
  echo "Node $(node -v) & NPM $(npm -v) are already installed."
else
  echo "Installing Node & NPM (lts and latest versions) using n (version manager)..."
  n lts
  n latest
fi

echo "\nInstalling some global NPM packages..."
npm i -g typescript
npm i -g prettier
npm i -g eslint

echo "\nThe global NPM packages have been successfully installed:"
npm list -g --depth=0