function check_last_exit_code() {
  local LAST_EXIT_CODE=$?
  if [[ $LAST_EXIT_CODE -ne 0 ]]; then
    local EXIT_CODE_PROMPT=" %{$fg[red]%}-$LAST_EXIT_CODE-%{$reset_color%}"
    echo "$EXIT_CODE_PROMPT"
  fi
}

PROMPT='$(check_last_exit_code) %{$fg[cyan]%}% %~%  %f%B❱ %{$reset_color%}$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=" %f%B❱ %b%f%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*"
ZSH_THEME_GIT_PROMPT_CLEAN=""
