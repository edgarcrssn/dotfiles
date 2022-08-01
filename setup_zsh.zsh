#!/usr/bin/env zsh

echo "\n<<< 🤖 Starting ZSH Setup 🤖 >>>\n"

# https://stackoverflow.com/a/4749368/1341838
if grep -Fxq '/opt/homebrew/bin/zsh' '/etc/shells'; then
  echo 'ℹ️  /opt/homebrew/bin/zsh already exists in /etc/shells.'
else
  echo "⏳ Enter superuser (sudo) password to edit /etc/shells:"
  echo '/opt/homebrew/bin/zsh' | sudo tee -a '/etc/shells' >/dev/null
fi

if [ "$SHELL" = '/opt/homebrew/bin/zsh' ]; then
  echo 'ℹ️  $SHELL is already /opt/homebrew/bin/zsh.'
else
  echo "⏳ Enter user password to change login shell:"
  chsh -s '/opt/homebrew/bin/zsh'
fi


if sh --version | grep -q zsh; then
  echo 'ℹ️  /private/var/select/sh is already linked to /bin/zsh.'
else
  echo "⏳ Enter superuser (sudo) password to symlink sh to zsh:"
  # Looked cute, might delete later, idk
  sudo ln -sfv /bin/zsh /private/var/select/sh

  # I'd like for this to work instead.
  # sudo ln -sfv /opt/homebrew/bin/zsh /private/var/select/sh
fi

echo "\n<<< 🤖 Ending ZSH Setup 🤖 >>>\n"
