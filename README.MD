# Get Started

## Install chezmoi on your machine using the shell script.
> We're installing it to the `~/.local/bin` directory to accomodate as many Unix-style OSs as possible.

I recommend forking the repo into your own `dotfiles` repo and then using the below command to install chezmoi, clone the repo and apply it in one step.
```shell
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b $HOME/.local/bin init --apply $GITHUB_USERNAME
```

# Usage
## Common commands
```sh
# Update the destination directory to match the target state
chezmoi apply

# Update the destination directory and refresh external files manually
chezmoi apply -R

# Update the destination directory and refresh the init files `promptStringOnce`, etc.
chezmoi apply -R

# Print the diff between the target state and the destination state
chezmoi diff

# Pull and apply any changes
chezmoi update

# Upgrade chezmoi to the latest released version
chezmoi upgrade

# Launch a shell in the source directory
chezmoi cd
```



# TODOS

- [ ] Hanlde Windows installs?
  - [ ] Krew
  - [ ] Starship
