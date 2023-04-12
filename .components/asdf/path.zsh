#!/bin/sh
# Add asdf to path
export PATH=$PATH:$HOME/.asdf/shims:$HOME/.asdf/bin

# setup asdf-direnv
DIRENV_DIR=$(asdf where direnv)
export ASDF_DIRENV_BIN="$DIRENV_DIR/bin/direnv"
eval "$($ASDF_DIRENV_BIN hook zsh)"
