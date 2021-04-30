#!/bin/sh

SCRIPT_DIR=`dirname $0`

echo "Backing up original login scripts..."
if [ -f ~/.bashrc ]; then
    mv ~/.bashrc ~/.bashrc_original
fi

if [ -f ~/.bash_profile ]; then
    mv ~/.bash_profile ~/.bash_profile_original
fi

if [ -f ~/.zshrc ]; then
    mv ~/.zshrc ~/.zshrc_original
fi

echo "Creating symlinks..."
ln -s "${SCRIPT_DIR}/.bashrc" ~/.bashrc
ln -s "${SCRIPT_DIR}/.bash_profile" ~/.bash_profile
ln -s "${SCRIPT_DIR}/.zshrc" ~/.zshrc

