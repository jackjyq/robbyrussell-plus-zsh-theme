if [[ $SSH_CONNECTION ]]; then
# at remote session
  PROMPT="%{$fg_bold[magenta]%}%m %(?:%{$fg_bold[green]%}➜:%{$fg_bold[red]%}➜)"
else
# at local session
  PROMPT="%(?:%{$fg_bold[green]%}➜:%{$fg_bold[red]%}➜)"
fi

PROMPT+=' %{$fg[blue]%}%c%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
