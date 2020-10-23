#!/bin/sh
if command -v brew >/dev/null 2>&1; then
	# brew is installed, install using brew
	# Also install all dependencies required by asdf or it's plugins
	brew install coreutils curl git asdf
else
	# install all dependencies required by asdf or it's plugins depending on package manager.
	if command -v apt >/dev/null 2>&1; then
		# Also install all dependencies required by asdf or it's plugins
		sudo apt install curl git
	elif command -v dnf >/dev/null 2>&1; then
		sudo dnf install curl git
	elif command -v pacman >/dev/null 2>&1; then
		sudo pacman -S curl git
	elif command -v zypper >/dev/null 2>&1; then
		sudo zypper install curl git
	fi

	# Install asdf using the default git method
	git clone https://github.com/asdf-vm/asdf.git ~/.asdf
	cd ~/.asdf || exit
	git checkout "$(git describe --abbrev=0 --tags)"
fi

# Allow asdf to recognize version files from legacy apps (.nvmrc, .rbenvrc, etc)
echo "legacy_version_file = yes" > ~/.asdfrc

cd "$DOTFILES" || exit


if command -v asdf >/dev/null 2>&1; then
	# asdf is in our path. Add asdf plugins
	asdf plugin add ruby
	asdf plugin add nodejs
	asdf plugin add python
	asdf plugin add dotnet-core

	ruby_latest=$(asdf latest ruby)
	nodejs_latest=$(asdf latest nodejs)
	python_latest=$(asdf latest python)
	dotnet_latest=$(asdf latest dotnet-core)

	echo "ruby ${ruby_latest}
nodejs ${nodejs_latest}
python ${python_latest}
dotnet-core ${dotnet_latest}" > ~/.tool-versions

fi
