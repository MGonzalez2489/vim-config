#!/usr/bin/env bash

echo "Installing Oh my zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing zInit"
sh -c "$(curl -fsSL https://git.io/zinit-install)"

echo "Installing Kitty Snazzy Theme"
curl -o ~/.config/kitty/snazzy.conf https://raw.githubusercontent.com/connorholyday/kitty-snazzy/master/snazzy.conf


echo "Removing existing dotfiles"
# remove files if they already exist
rm -rf ~/.config/nvim/coc-settings.json
rm -rf ~/.vim ~/.vimrc ~/.zshrc ~/.tmux ~/.tmux.conf ~/.config/nvim 2> /dev/null


echo "Creating symlinks"
# Neovim expects some folders already exist
mkdir -p ~/.config/ ~/.config/nvim/

echo "Installing Python 3"
# install python 3
pyenv install 3.11.3 #latest
pyenv global 3.11.3


# Symlinking files
ln -s ~/dotfiles/nvim/* ~/.config/nvim/

# Italics and true color profile for tmux
tic -x tmux.terminfo

echo "Installing brew"
# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install git
brew install ripgrep
brew install tmux
brew install neovim
brew install ag
brew install fzf
brew install bat

# FZF shortcuts
$(brew --prefix)/opt/fzf/install

# install fnm
curl -fsSL https://github.com/Schniz/fnm/raw/master/.ci/install.sh | bash

# install Paq - Neovim Plugin Manager
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'



pip3 install pynvim

# pure prompt manual config
mkdir -p "$HOME/.zsh"
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"









