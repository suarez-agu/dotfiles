#!/bin/sh
# Add asdf to path
export PATH=$PATH:$HOME/.asdf/shims:$HOME/.asdf/bin

# setup asdf-direnv
ASDF_DIR=$HOME/.asdf
DIRENV_VERSION=$(asdf latest direnv)
export ASDF_DIRENV_BIN="$ASDF_DIR/installs/direnv/$DIRENV_VERSION/bin/direnv"
eval "$($ASDF_DIRENV_BIN hook zsh)"
