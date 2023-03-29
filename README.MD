# Get Started
> Migrating from the old dotfiles? run the following command to clean things up before you install: `rm -rf ~/.znap ~/.asdf ~/.dotfiles`

## Github Access Token
In order to avoid any issues with rate limiting on the GH API, I recommend adding a [personal access token](https://docs.github.com/en/enterprise-server@3.4/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token) to your shell env. You can do this by setting one of these env variables:
- `CHEZMOI_GITHUB_ACCESS_TOKEN`
- `GITHUB_ACCESS_TOKEN`
- `GITHUB_TOKEN`


## Install chezmoi on your machine using the shell script.
> We're installing it to the `~/.local/bin` directory to accomodate as many Unix-style OSs as possible.

I recommend forking the repo into your own `dotfiles` repo and then using the below command to install chezmoi, clone the repo and apply it in one step.
> Note: this one-liner assumes it is cloning a repo called `dotfiles` from the user `$GITHUB_USERNAME`, make sure that's what you call your fork.
> Otherwise, please check the `chezmoi` docs for how to specify a different repo name.
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


# Useful Links
Some of these files were directly inspired by [budimanjojo's dotfiles](https://github.com/budimanjojo/dotfiles)
