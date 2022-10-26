#!/usr/bin/env zsh

echo "\n<<< 🤖 Starting ZSH Setup 🤖 >>>\n"

# Ask for the administrator password upfront
sudo -v
# Keep-alive: update existing `sudo` time stamp until script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &



# https://stackoverflow.com/a/4749368/1341838
if grep -Fxq '/opt/homebrew/bin/zsh' '/etc/shells'; then
  echo 'ℹ️  /opt/homebrew/bin/zsh already exists in /etc/shells.'
else
  echo "⏳ Adding Homebrew's zsh to /etc/shells:"
  echo '/opt/homebrew/bin/zsh' | sudo tee -a '/etc/shells' >/dev/null
fi

if [ "$SHELL" = '/opt/homebrew/bin/zsh' ]; then
  echo 'ℹ️  $SHELL is already /opt/homebrew/bin/zsh.'
else
  echo "⏳ Changing login shell to Homebrew's zsh:"
  chsh -s '/opt/homebrew/bin/zsh'
fi

if sh --version | grep -q zsh; then
  echo 'ℹ️  /private/var/select/sh is already linked to /bin/zsh.'
else
  echo "⏳ Symlinking sh to zsh:"
  # Looked cute, might delete later, idk
  sudo ln -sfv /bin/zsh /private/var/select/sh

  # I'd like for this to work instead.
  # sudo ln -sfv /opt/homebrew/bin/zsh /private/var/select/sh
fi



if [[ -d "$HOME/.oh-my-zsh" ]]; then
  echo "ℹ️  oh-my-zsh is already installed.\n"
else
  echo "⏳ Installing oh-my-zsh...\n"
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi



echo "⏳ Installing few plugins for oh-my-zsh...\n"

if [[ -d "$HOME/.oh-my-zsh/plugins/zsh-autosuggestions" ]]; then
  echo "\tℹ️  zsh-autosuggestions is already installed.\n"
else
  echo "\t⏳ Installing zsh-autosuggestions plugin for oh-my-zsh...\n"
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

if [[ -d "$HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting" ]]; then
  echo "\tℹ️  zsh-syntax-highlighting is already installed.\n"
else
  echo "\t⏳ Installing zsh-syntax-highlighting plugin for oh-my-zsh...\n"
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi



if [[ -d "$HOME/.oh-my-zsh/themes/powerlevel10k" ]]; then
  echo "ℹ️  PowerLevel10K is already installed.\n"
else
  echo "⏳ Installing PowerLevel10K theme for oh-my-zsh...\n"
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
fi



echo "\n✅ Done! For the changes to be applied, please reload the zsh config file by running the command below:"
echo "source ~/.zshrc"

echo "\n<<< 🤖 Ending ZSH Setup 🤖 >>>\n"
