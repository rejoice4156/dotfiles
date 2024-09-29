#!/bin/bash
set -eoux pipefail

echo "Starting script..."

# .bashrc
echo "Checking for $HOME/.bashrc..."
if [ -e $HOME/.bashrc ]; then
    echo "Backing up $HOME/.bashrc to $HOME/.bashrc.bak..."
    cp $HOME/.bashrc $HOME/.bashrc.bak
fi
echo "Copying over new .bashrc to $HOME/.bashrc..."
cp -i ./.bashrc $HOME/.bashrc

# .bashrc.d/variables.bashrc
echo "Creating $HOME/.bashrc.d if not already exists..."
mkdir -p $HOME/.bashrc.d
echo "Checking for $HOME/.bashrc.d/variables.bashrc..."
if [ -e $HOME/.bashrc.d/variables.bashrc ]; then
    echo "Backing up $HOME/.bashrc.d/variables.bashrc to $HOME/.bashrc.d/variables.bashrc.bak..."
    cp $HOME/.bashrc.d/variables.bashrc $HOME/.bashrc.d/variables.bashrc.bak
fi
echo "Copying over new .bashrc.d/variables.bashrc to $HOME/.bashrc.d/variables.bashrc..."
cp -i ./.bashrc.d/variables.bashrc $HOME/.bashrc.d/variables.bashrc

# .bashrc.d/aliases.bashrc
echo "Checking for $HOME/.bashrc.d/aliases.bashrc..."
if [ -e $HOME/.bashrc.d/aliases.bashrc ]; then
    echo "Backing up $HOME/.bashrc.d/aliases.bashrc to $HOME/.bashrc.d/aliases.bashrc.bak..."
    cp $HOME/.bashrc.d/aliases.bashrc $HOME/.bashrc.d/aliases.bashrc.bak
fi
echo "Copying over new .bashrc.d/aliases.bashrc to $HOME/.bashrc.d/aliases.bashrc..."
cp -i ./.bashrc.d/aliases.bashrc $HOME/.bashrc.d/aliases.bashrc

# .gitconfig
echo "Checking for $HOME/.gitconfig..."
if [ -e $HOME/.gitconfig ]; then
    echo "Backing up $HOME/.gitconfig to $HOME/.gitconfig.bak..."
    cp $HOME/.gitconfig $HOME/.gitconfig.bak
fi
echo "Copying over new .gitconfig to $HOME/.gitconfig..."
cp -i ./.gitconfig $HOME/.gitconfig

# .vimrc
echo "Checking for $HOME/.vimrc..."
if [ -e $HOME/.vimrc ]; then
    echo "Backing up $HOME/.vimrc to $HOME/.vimrc.bak..."
    cp $HOME/.vimrc $HOME/.vimrc.bak
fi
echo "Copying over new .vimrc to $HOME/.vimrc..."
cp -i ./.vimrc $HOME/.vimrc

# .ssh/allowed_signers
echo "Creating $HOME/.ssh if not already exists..."
mkdir -p $HOME/.ssh
echo "Checking for $HOME/.ssh/allowed_signers..."
if [ -e $HOME/.ssh/allowed_signers ]; then
    echo "Backing up $HOME/.ssh/allowed_signers to $HOME/.ssh/allowed_signers.bak..."
    cp $HOME/.ssh/allowed_signers $HOME/.ssh/allowed_signers.bak
fi
echo "Copying over new .ssh/allowed_signers to $HOME/.ssh/allowed_signers..."
cp -i ./.ssh/allowed_signers $HOME/.ssh/allowed_signers

echo "Ending script..."
