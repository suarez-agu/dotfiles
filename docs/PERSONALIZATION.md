# Personalization

> How to add custom configuration without messing up the local repository

## For the shell itself

You can add anything you want (secret stuff, for example), to the `~/.localrc`
file.

## For the prompt

You can add any config options to the `dot_config/starship.toml` file. This follows the regular `starship.toml` file [configuration options](https://starship.rs/config/).

## For git

You can just change the default `~/.gitconfig` file, since it includes the
dotfiles managed one.

## For ssh

You can edit the `~/private_dot_ssh/private_config` file.
