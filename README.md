# Custom configuration for arch-linux

This repository contains the configuration for an specific arch linux session.

## Content

- Bash: `.bash_profile`, `.bashrc`.

- Zsh: `.zshrc`.

- An script `.commonrc` launched by both bash and zsh

- A `.xinitrc` configuration file.

- Under `.config`:

  - Bspwm configuration folder

  - Sxhkd configuration folder

  - Polybar configuration folder

## How to run it

1. Clone this project and rename it at taste. Ex: `git clone git@github.com:turbod89/configuration-arch-linux-session.git my-config`.

2. Edit the file `files.sh` to remove the files you do not want to configure.

3. *Inside the repository folder* run the script `create_symlinks.sh`.
