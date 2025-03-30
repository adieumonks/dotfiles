export ZENO_GIT_CAT="cat"
export ZENO_GIT_TREE="tree"
if [[ -n $ZENO_LOADED ]]; then
  bindkey ' ' zeno-auto-snippet
  bindkey '^m' zeno-auto-snippet-and-accept-line
  bindkey '^i' zeno-completion
  bindkey '^r' zeno-history-selection
  bindkey '^x' zeno-insert-snippet
  bindkey '^g' zeno-ghq-cd

  zle -N git-switch-branch _git_switch_branch
  bindkey '^b' git-switch-branch
fi
