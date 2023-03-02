#!/bin/zsh
# Import term colors
. $TERM_COLORS_PATH

if [ "$(uname -s)" = "Darwin" ]; then
	# brew is installed, install using brew
	# install all dependencies required by asdf or it's plugins
	brew install coreutils curl git
else
	# install all dependencies required by asdf or it's plugins depending on package manager.
	if command -v apt >/dev/null 2>&1; then
		# Also install all dependencies required by asdf or it's plugins
		sudo apt install curl git
		sudo apt-get autoremove -y
	elif command -v dnf >/dev/null 2>&1; then
		sudo dnf install curl git
	elif command -v pacman >/dev/null 2>&1; then
		sudo pacman -S curl git
	elif command -v zypper >/dev/null 2>&1; then
		sudo zypper install curl git
	fi
fi

cd "$DOTFILES" || exit


if command -v asdf >/dev/null 2>&1; then
	# asdf is in our path. Add asdf plugins
	asdf plugin add ruby
	asdf plugin add nodejs
	asdf plugin add python
	asdf plugin add neovim
	asdf plugin add direnv

	file=$HOME/.tool-versions
	if [ ! -e "$file" ] ; then
		echo "${T_INFO}$file does not exist, creating and setting latest tool versions${T_NORMAL}"
		source ${DOTFILES}/asdf/generate-toolversions.sh
		echo "${T_INFO}Integrating direnv with asdf properly${T_NORMAL}"
		asdf direnv setup --shell zsh --version latest
	else
		echo "${T_WARNING}$file exists, skipping creation step${T_NORMAL}"
	fi

fi
