#!/bin/sh
# vimrc install script

# Check that Git is actually present
if ! git --version >/dev/null 2>&1; then
    echo "You need to install Git to clone the vimrc repository."
    exit 1
fi

# Check that Curl is present too
if ! curl --version >/dev/null 2>&1; then
    echo "You need to install Curl to download vim-plug."
    exit 1
fi

# Backup old setup (-f for overwriting old backups).
[ -e ~/.vimrc ] && (rm -rf ~/.vimrc.bak; mv ~/.vimrc ~/.vimrc.bak)
[ -e ~/.vim ] && (rm -rf ~/.vim.bak; mv ~/.vim ~/.vim.bak)
[ -e ~/.tmux.conf ] && (rm -rf ~/.tmux.conf.bak; mv ~/.tmux.conf ~/.tmux.conf.bak)

# Clone and install configuration.
git clone https://github.com/jhayes14/dotfiles ~/dotfiles
echo 'Downloading vim-plug...'
curl -sfLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Set up symbolic links.
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

# Execute install.
if vim --version >/dev/null 2>&1; then
    vim +PlugInstall +qall
else
    echo "You don't have Vim installed at this moment."
    echo "Please, install it, then run:"
    echo "  vim +PlugInstall +qall"
fi

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
echo 'Downloading tmux-plug...'
# type this in terminal if tmux is already running
tmux source ~/dotfiles/tmux.conf
