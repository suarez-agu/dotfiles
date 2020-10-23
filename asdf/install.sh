#!/bin/sh
if command -v brew >/dev/null 2>&1; then
	# brew is installed, install using brew
	brew install asdf
else
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

	ruby_latest=$(asdf latest ruby)
	nodejs_latest=$(asdf latest nodejs)
	python_latest=$(asdf latest python)

	echo "ruby ${ruby_latest}
nodejs ${nodejs_latest}
python ${python_latest}" > ~/.tool-versions

fi
