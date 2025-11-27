#!/bin/bash -ex

# Clone the dotfiles repository
if [ ! -d "$HOME/.dotfiles" ]; then
  echo "Cloning dotfiles repository..."
  git clone https://github.com/idrissrio/dotfiles.git $HOME/.dotfiles
fi

# Install tools and plugins
sudo apt-get update
sudo apt-get install -y zsh-autosuggestions zsh-syntax-highlighting

# Source the .zshrc file
if [ -f "$HOME/.dotfiles/.zshrc" ]; then
  echo "Sourcing .zshrc..."
  source $HOME/.dotfiles/.zshrc
fi

# Set zsh as the default shell
if [ "$SHELL" != "/bin/zsh" ]; then
  echo "Setting zsh as the default shell..."
  chsh -s /bin/zsh
fi

# Print success message
echo "Codespaces environment setup complete!"
