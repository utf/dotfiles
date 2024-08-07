autoload colors && colors
# cheers, @ehrenmurdick
# http://github.com/ehrenmurdick/config/blob/master/zsh/prompt.zsh

if (( $+commands[git] ))
then
  git="$commands[git]"
else
  git="/usr/bin/git"
fi

git_branch() {
  echo $($git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

git_dirty() {
  if $(! $git status -s &> /dev/null)
  then
    echo ""
  else
    if [[ $($git status --porcelain) == "" ]]
    then
      echo " (%{$fg[green]%}$(git_prompt_info)%{$reset_color%})"
    else
      echo " (%{$fg[yellow]%}$(git_prompt_info)%{$reset_color%})"
    fi
  fi
}

conda_env() {
  if (( ${+CONDA_DEFAULT_ENV} )); then
    echo "%{$fg_bold[green]%}($CONDA_DEFAULT_ENV)%{$reset_color%} "
  else
    echo ""
  fi
}

git_prompt_info () {
 ref=$($git symbolic-ref HEAD 2>/dev/null) || return
# echo "(%{\e[0;33m%}${ref#refs/heads/}%{\e[0m%})"
 echo "${ref#refs/heads/}"
}

directory_name() {
  echo "%{$fg_bold[cyan]%}%~%{$reset_color%}"
}

export PROMPT=$'$(conda_env)$(hostname) in $(directory_name)$(git_dirty) › '
set_prompt () {
  export RPROMPT="%{$fg_bold[cyan]%}%{$reset_color%}"
}

precmd() {
  title "zsh" "%m" "%55<...<%~"
  set_prompt
}
