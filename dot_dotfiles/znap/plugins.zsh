#!/bin/zsh
# Kinda important :)
znap source asdf-vm/asdf

# this block is in alphabetic order
znap source caarlos0/ports
znap source caarlos0/zsh-git-fetch-merge
znap source caarlos0/zsh-git-sync
znap source caarlos0/zsh-mkc
znap source caarlos0/zsh-open-pr
znap source mafredri/zsh-async
znap source agkozak/zsh-z
znap source zsh-users/zsh-completions

ZSH_AUTOSUGGEST_STRATEGY=( completion )
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=30
znap source zsh-users/zsh-autosuggestions

ZSH_HIGHLIGHT_HIGHLIGHTERS=( main brackets root )
znap source zsh-users/zsh-syntax-highlighting
znap source sbodiu-pivotal/fly-zsh-autocomplete-plugin

# The cache gets regenerated, too, when the eval command has changed. For
# example, here we include a variable. So, the cache gets invalidated whenever
# this variable has changed.
znap source marlonrichert/zcolors
znap eval   marlonrichert/zcolors "zcolors ${(q)LS_COLORS}"

# these should be at last!
znap source zdharma-continuum/fast-syntax-highlighting
znap source zsh-users/zsh-history-substring-search

# `znap eval` caches and runs any kind of command output for you.

# Here we include the full path to a command. Since that path includes a
# version number, the cache will be invalidated when that changes.
znap eval asdf-community/asdf-direnv "asdf exec $( asdf which direnv ) hook zsh"

# If kubectl exists, install completions:
if command -v kubectl &> /dev/null; then
	znap fpath _kubectl 'kubectl completion zsh'
fi
# If rustup/cargo exists, install completions:
if command -v kubectl &> /dev/null; then
	znap fpath _rustup  'rustup  completions zsh'
	znap fpath _cargo   'rustup  completions zsh cargo'
fi
