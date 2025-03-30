# alias
## ls
alias ls="ls -G"
alias ll="ls -lrt"
alias l="ll"
alias la="ll -a"

## docker
alias dc="docker compose"

## top
alias top="htop"

## kubectl
alias k="kubectl"
alias kc="kubectx"

# completion
## 補完機能を有効にする
zstyle ':completion:*:default' menu select=2
## 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
## 補完候補一覧をカラー表示
zstyle ':completion:*' list-colors ''

# enhancd
source $HOME/ghq/github.com/b4b4r07/enhancd/init.sh
export ENHANCD_ENABLE_DOUBLE_DOT=false
export ENHANCD_ENABLE_HOME=false

# fzf
export FZF_DEFAULT_OPTS='--reverse'
