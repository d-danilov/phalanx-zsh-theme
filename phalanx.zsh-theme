function check_last_exit_code() {
  local LAST_EXIT_CODE=$?
  if [[ $LAST_EXIT_CODE -ne 0 ]]; then
    local EXIT_CODE_PROMPT=' '
    EXIT_CODE_PROMPT+="%{$fg[red]%}-%{$reset_color%}"
    EXIT_CODE_PROMPT+="%{$fg_bold[red]%}$LAST_EXIT_CODE%{$reset_color%}"
    EXIT_CODE_PROMPT+="%{$fg[red]%}-%{$reset_color%}"
    echo "$EXIT_CODE_PROMPT"
  fi
}

PROMPT='$(check_last_exit_code) %{$fg[cyan]%}% %~%  %f%B❱%b%f %{$reset_color%}$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}%{$fg_no_bold[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_no_bold[blue]%} %f%B❱%b%f %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_no_bold[red]%}*%{$fg_no_bold[yellow]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_no_bold[blue]%}"
