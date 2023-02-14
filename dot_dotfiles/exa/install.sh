#!/bin/sh
if [ "$(uname -s)" = "Darwin" ]; then
	if command -v brew >/dev/null 2>&1; then
		brew install exa
	else
		# Install Rust
		curl https://sh.rustup.rs -sSf | sh
		cargo install exa
	fi
else
	sudo apt install exa
fi
