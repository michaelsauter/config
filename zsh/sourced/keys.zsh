bindkey "^[f" forward-word
bindkey "^[b" backward-word

bindkey '^[^[[D' backward-word # macOS / tmux
bindkey '^[^[[C' forward-word # macOS / tmux

bindkey "^[[3~" delete-char
bindkey "^[3;5~" delete-char
