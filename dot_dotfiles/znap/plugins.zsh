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
znap source zsh-users/zsh-autosuggestions
znap source zsh-users/zsh-syntax-highlighting
znap source sbodiu-pivotal/fly-zsh-autocomplete-plugin

# these should be at last!
# Powerlevel10k theme
znap source romkatv/powerlevel10k

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
