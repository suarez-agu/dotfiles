# Load Nerd Fonts with Powerlevel9k theme for Zsh
POWERLEVEL9K_MODE='nerdfont-complete'
# Customise the Powerlevel9k prompts
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon
	ssh
	context
	dir_writable
	dir
	# GO Segments
	go_version

	vcs
	newline
	status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(root_indicator time)
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_CONTEXT_TEMPLATE=%n
POWERLEVEL9K_DIR_SHOW_WRITABLE=true

#VCS
POWERLEVEL9K_VCS_HIDE_TAGS=true
