# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

############################################
# path
############################################
typeset -gU PATH path
typeset -gU FPATH fpath

fpath=(
    "$HOME/.zsh/completions"(N-/)
    "$fpath[@]"
)

############################################
# sheldon
############################################
eval "$(sheldon source)"

############################################
# setopt
############################################
setopt list_packed
setopt no_beep
setopt correct

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

############################################
# local
############################################
if [ -f "$HOME/.zshrc.local" ]; then
  . "$HOME/.zshrc.local"
fi
