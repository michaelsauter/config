# Overview

Minimal terminal configuration. Installs basic packages, zsh and tmux.

# Setup

```sh
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
git clone https://github.com/martinlindhe/base16-iterm2 ~/.config/base16-iterm2
git clone git@github.com:michaelsauter/config.git ~/.config/msauter
~/.config/msauter/install
```

# Customization

Files located at `~/.config/msauter/custom/sourced` and ending in `.zsh` are
autoloaded by `.zshrc`.

Files located at `~/.config/msauter/custom/linked` are symlinked to `$HOME` by
the `ìnstall` script.

All files in `~/.config/msauter/custom/sourced` and
`~/.config/msauter/custom/linked` are ignored by git.

# Git

Create a `~/.gituser` file for the right user:

```sh
[user]
  name = Michael Sauter
  email = my.email@example.com
  signingkey=7C60D5D6
```

# SSH Agent

On MacOS, create the following `.ssh/config`:

```sh
Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_rsa
```

On Linux, create the following `~/.config/msauter/custom/sourced/ssh-agent.zsh`:
```sh
eval $(keychain --eval ~/.ssh/id_ed25519)
```

# Mac: iTerm Setup

In the preferences go to "Profiles > Colors" and under "Color Presets", click
"Import ...". Then navigate to `~/.config/base16-iterm2/itermcolors`. You can
press `Cmd+Shift+.` to show hidden folders. Select
`base16-eighties-256.itermcolors`, and then click on "Color Presets" and choose the
new item `base16-eighties-256`.

To enable copying in tmux, check "Applications in terminal may access
clipboard" in "General > Selections" to automatically copy text selected with
the mouse while respecting panes.

# Vim

Neovim is installed, but not configured. Please check out the
[nvim configuration](https://github.com/michaelsauter/nvim).
