#!/bin/zsh

# Disable Oh-My-Zsh autoupdates as they are handled by chezmoi
zstyle ':omz:update' mode disabled
zstyle :omz:plugins:iterm2 shell-integration yes

ZSH_AUTOSUGGEST_STRATEGY=( completion )
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=30

ZSH_HIGHLIGHT_HIGHLIGHTERS=( main brackets root )

plugins=(
  alias-finder
  aliases
  asdf
  brew
  bundler
  common-aliases
  copyfile
  copypath
  docker-compose
  docker
  encode64
  extract
  fzf
  gh
  git
  iterm2
  kubectl
  macos
  ripgrep
  rust
  tmux
  z
  zsh-interactive-cd
  dotnet
  fzf

  ports
  git-fetch-merge
  git-sync
  mkc
  git-open-pr
  async
  history-substring-search
  zsh-completions
  fast-syntax-highlighting
)
