#!/usr/bin/env zsh

echo "\n<<< 💎 Starting Node Setup 💎 >>>\n"

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
  echo "ℹ️  pnpm $(pnpm -v) is already installed."
else
  echo "⏳ Installing pnpm using npm..."
  npm i -g pnpm
fi

if exists prettier; then
  echo "ℹ️  Prettier $(prettier -v) is already installed."
else
  echo "⏳ Installing Prettier using npm..."
  npm i -g prettier
fi

if exists eslint; then
  echo "ℹ️  ESLint $(eslint -v) is already installed."
else
  echo "⏳ Installing ESLint using npm..."
  npm i -g eslint
fi

if exists trash; then
  echo "ℹ️  trash-cli $(trash --version) is already installed."
else
  echo "⏳ Installing trash-cli using npm..."
  npm i -g trash-cli
fi

echo "\n✅ The global NPM packages have been successfully installed:"
npm list -g --depth=0

echo "\n<<< 💎 Ending Node Setup 💎 >>>\n"
