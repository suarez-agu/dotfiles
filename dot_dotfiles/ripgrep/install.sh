#!/bin/sh
if command -v brew >/dev/null 2>&1; then
	# brew is installed, install using brew
	brew install ripgrep
else
	# install ripgrep depending on package manager.
	if command -v apt >/dev/null 2>&1; then
		# Also install all dependencies required by asdf or it's plugins
		sudo apt install ripgrep
		sudo apt-get autoremove -y
	elif command -v dnf >/dev/null 2>&1; then
		sudo dnf install ripgrep
	elif command -v pacman >/dev/null 2>&1; then
		sudo pacman -S ripgrep
	elif command -v zypper >/dev/null 2>&1; then
		sudo zypper install ripgrep
	fi
fi
