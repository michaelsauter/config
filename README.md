# Overview

Minimal terminal configuration. Installs basic packages, ZSH and tmux.

# Setup

```sh
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
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

# SSH Agent

On MacOS, create the following `.ssh/config`:

```sh
Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_rsa
```

# Vim

Neovim is installed, but not configured. Please check out the
[nvim configuration](https://github.com/michaelsauter/nvim).
