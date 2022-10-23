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

if [[ -d "/Users/$USER/.oh-my-zsh" ]]; then
  echo "ℹ️  oh-my-zsh is already installed.\n"
else
  echo "⏳ Installing oh-my-zsh...\n"
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  echo "⏳ Installing PowerLevel10K Theme for oh-my-zsh...\n"
  git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

  echo "⏳ Installing few plugins for oh-my-zsh...\n"
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi

echo "\n<<< 🤖 Ending ZSH Setup 🤖 >>>\n"
