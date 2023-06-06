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
rm -rf ~/config/nvim/
rm -rf ~/.vimrc
rm -rf ~/.vim
rm -rf ~/zshrc
rm -rf ~/.vim ~/.vimrc ~/.zshrc ~/.tmux ~/.tmux.conf ~/.config/nvim 2> /dev/null
rm -rf ~/.zsh/pure

echo "install nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
sh -c "nvm install 18.16.0"

echo "Creating required folders"
# Neovim expects some folders already exist
mkdir -p ~/.config/

echo "Copy nvim folder"
cp -r ./nvim ~/.config/nvim/
cp -r ./zshrc ~/.zshrc

echo "Installing Python 3"
# install python 3
pyenv install 3.11.3 #latest
pyenv global 3.11.3

echo "Creating symlinks"
# Symlinking files
ln -s ~/.config/nvim/.vimrc ~/.vimrc
ln -s ~/.config/nvim/.vim/ ~/.vim
echo "Installing zInit"

# Italics and true color profile for tmux
tic -x tmux.terminfo

echo "Installing brew"
# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> ${HOME}/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

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
echo "Installing neovim plugin manager"
# install Paq - Neovim Plugin Manager
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'



pip3 install pynvim

# pure prompt manual config
mkdir -p "$HOME/.zsh"
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"


alias vim="nvim"






