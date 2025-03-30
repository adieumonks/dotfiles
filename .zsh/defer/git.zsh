_git_switch_branch() {
  local branch=$(git branch --all | sed -e "s/^[*]* *//g" | ${ZENO_FZF_COMMAND} ${ZENO_FZF_TMUX_OPTIONS} --prompt='Switch Branch >' --preview "git log --color=always {}" | sed -e 's$remotes/origin/$$g')

  if [[ "$branch" == "" ]]; then
    return 1
  fi
  git switch $branch
  zle accept-line
}
