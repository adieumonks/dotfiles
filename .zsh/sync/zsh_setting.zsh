# 履歴保存管理
export HISTFILE=$HOME/.zsh_history
export HISTSIZE=100000000
export SAVEHIST=100000000
# コマンドの重複削除
setopt hist_ignore_dups
# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups
# 他のzshと履歴を共有
setopt inc_append_history
setopt share_history

# パスを直接入力してもcdする
setopt auto_cd

# 環境変数を補完
setopt auto_param_keys

# 不要なヒストリーは保存しないようにする
zshaddhistory() {
    local line="${1%%$'\n'}"
    [[ ! "$line" =~ "^(cd|la|ll|ls|rm|rmdir|clear|history|exit)($| )" ]]
}

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
