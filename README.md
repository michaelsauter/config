# Overview

Minimal terminal configuration. Installs basic packages, ZSH and tmux.

# Setup

```sh
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
git clone https://github.com/michaelsauter/config.git ~/.config/msauter
~/.config/msauter/install
```

# Customization

Files located at `~/.config/msauter/custom/sourced` are autoloaded and ignored
by git.

Files located at `~/.config/msauter/custom/linked` are symlinked to `$HOME` by
the `ìnstall` script and ignored by git.

# Vim

Neovim is installed, but not configured. Please check out the
[nvim configuration](https://github.com/michaelsauter/nvim).
