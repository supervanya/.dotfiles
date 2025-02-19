#!/bin/bash
#
# Sets up .dotfiles on new machine
#
# Usage:
#   bash <(curl https://raw.githubusercontent.com/supervanya/.dotfiles/main/init.sh)

## install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# set up local .dotfiles repo
mkdir -p $HOME/github
REPO_DIR="$HOME/github/.dotfiles"
config="git --git-dir=$REPO_DIR --work-tree=$HOME"
if [ ! -d "$REPO_DIR" ]; then
    echo "Directory does not exist. Cloning repository..."
    git clone --bare git@github.com:supervanya/.dotfiles.git $REPO_DIR
    $config config --local status.showUntrackedFiles no
    $config checkout
else
    echo "Directory exists. Pulling latest changes..."
    $config pull || { echo "Failed to pull latest changes."; exit 1; }
fi
curl -fsSL https://raw.githubusercontent.com/gpakosz/.tmux/master/.tmux.conf > $HOME/.config/tmux/tmux.conf

# brew
## install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
## install brew packages
brew bundle --file $HOME/Brewfile --no-lock
brew bundle check
brew update
brew upgrade

# reload zsh
exec zsh
