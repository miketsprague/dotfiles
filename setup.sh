#!/bin/bash -ex

# Clone the dotfiles repository
if [ ! -d "$HOME/.dotfiles" ]; then
  echo "Cloning dotfiles repository..."
  git clone https://github.com/idrissrio/dotfiles.git $HOME/.dotfiles
fi

# Install tools and plugins
sudo apt-get update
sudo apt-get install -y zsh-autosuggestions zsh-syntax-highlighting

# Link the .zshrc file
if [ -f "$HOME/.dotfiles/.zshrc" ]; then
  echo "Linking .zshrc..."
  ln -sf $HOME/.dotfiles/.zshrc $HOME/.zshrr
fi

# Set zsh as the default shell
if [ "$SHELL" != "/bin/zsh" ]; then
  echo "Setting zsh as the default shell..."
  sudo -i chsh -s /bin/zsh
fi

# Print success message
echo "Codespaces environment setup complete!"
