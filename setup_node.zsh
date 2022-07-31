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
