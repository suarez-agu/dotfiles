#!/bin/sh
if [ "$(uname -s)" = "Darwin" ]; then
	if command -v brew >/dev/null 2>&1; then
		brew install exa
	else
		echo "Installing without brew is a bit weird at the moment, please look at the following link:"
		echo "https://the.exa.website/install"
	fi
else
#	Could this work? Or do we just wait for the snap? https://www.tecmint.com/exa-a-replacement-for-ls-command-linux/
	echo "Installing on linux distros is a bit weird at the moment, please look at the following link:"
	echo "https://the.exa.website/install"
fi
