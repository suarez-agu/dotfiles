#!/bin/sh
# Add asdf to path
export PATH=$PATH:$HOME/.asdf/shims:$HOME/.asdf/bin

# setup direnv
source "${XDG_CONFIG_HOME:-$HOME/.config}/asdf-direnv/zshrc"
