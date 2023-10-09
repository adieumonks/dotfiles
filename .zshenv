# 環境変数
export LANG=ja_JP.UTF-8
export LC_TYPE=ja_JP.UTF-8
export PATH="/usr/local/bin:/usr/local/sbin:/sbin/:$PATH"

export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# 設定ファイルの編集
alias zshrc="code $HOME/.zshrc"
alias zshenv="code $HOME/.zshenv"

# 便利コマンド
mkcd() {
    mkdir -p "$@" && cd $_
}