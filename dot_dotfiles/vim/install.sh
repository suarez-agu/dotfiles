#!/bin/sh
# Install Astrovim (https://github.com/AstroNvim/AstroNvim)
# This doesn't install nvim itself since we want to manage it using asdf.

# Echo: Installing AstroVim config files
NVIM_DIR="$HOME/.config/nvim/"
if [ -d "$NVIM_DIR" ]; then
	# Backup existing nvim dir. #
	mv ~/.config/nvim ~/.config/nvimbackup
else
	mkdir -p ~/.config/nvim/
fi

git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
nvim +PackerSync
