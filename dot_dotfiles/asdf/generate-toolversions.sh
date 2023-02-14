#!/bin/sh

ruby_latest=$(asdf latest ruby)
		nodejs_latest=$(asdf latest nodejs)
		python_latest=$(asdf latest python)
		direnv_latest=$(asdf latest direnv)
		neovim_latest=$(asdf latest neovim)
		kubectl_latest=$(asdf latest kubectl)
		helm_latest=$(asdf latest helm)
		golang_latest=$(asdf latest golang)
		k6_latest=$(asdf latest k6)

		echo "ruby ${ruby_latest}
nodejs ${nodejs_latest}
python ${python_latest}
direnv ${direnv_latest}
neovim ${neovim_latest}
kubectl ${kubectl_latest}
helm ${helm_latest}
golang ${golang_latest}
k6 ${k6_latest}
" > ~/.tool-versions
