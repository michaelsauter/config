if [[ x$WINDOW != x ]]
then
    SCREEN_NO="%B$WINDOW%b "
else
    SCREEN_NO=""
fi

# Apply theming defaults
PS1="%n@%m:%~%# "


# Git
# Checks if working tree is dirty
parse_git_dirty() {
  local git_status
  git_status=$(command git status -s --ignore-submodules=dirty 2> /dev/null | tail -n1)
  if [[ -n $git_status ]]; then
    echo "±"
  else
    echo ""
  fi
}
# Prompt
prompt_git() {
  local ref dirty
  if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
    dirty=$(parse_git_dirty)
    ref=$(git symbolic-ref HEAD 2> /dev/null) || ref="➦ $(git show-ref --head -s --abbrev |head -n1 2> /dev/null)"
    local output="${ref/refs\/heads\//}$dirty"
    if [[ -n $dirty ]]; then
      echo -n "%F{red}$output%f"
    else
      echo -n "%F{green}$output%f"
    fi
  fi
}

function precmd() {
  current_time=`TZ=Europe/Berlin date +'%H:%M'`
  print -rP '
%F{cyan}%D{$current_time} $USERNAME%f %F{yellow}%c%f $(prompt_git)'
}

PROMPT='%(?..%F{red}[%?]%f )→ '
RPROMPT=''
