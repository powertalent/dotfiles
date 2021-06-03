#!/bin/sh
# Clone dotfiles in to workspace

mkdir -p $HOME/workspace
git clone https://github.com/powertalent/dotfiles.git $HOME/workspace/dotfiles
cd $HOME/workspace/dotfiles

# Restore runtime config
while read f; do
	echo "Copying file $f..."
	cp -rf $f ~/
done < Dotfiles

# Copy init.nvim
mkdir ~/.config
mkdir ~/.nvim
cp -rf init.vim  ~/.config/nvim/init.vim

echo "Restore dotfiles done!"
