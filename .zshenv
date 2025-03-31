############################################
# 環境変数の設定
############################################
export LANG=ja_JP.UTF-8
export LC_TYPE=ja_JP.UTF-8
export PATH="/usr/local/bin:/usr/local/sbin:/sbin/:$PATH"

############################################
# brew
############################################
if [[ $(uname -m) == "arm64" ]]; then
  export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
fi

############################################
# XDG
############################################
export XDG_CONFIG_HOME="$HOME/.config"

############################################
# Go
############################################
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

############################################
# Rust
############################################
if [ -f "$HOME/.cargo/env" ]; then
  . "$HOME/.cargo/env"
fi

############################################
# VSCode
############################################
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"

############################################
# 設定ファイルのエイリアス
############################################
alias zshrc="code $HOME/.zshrc"
alias zshenv="code $HOME/.zshenv"

############################################
# local
############################################
if [ -f "$HOME/.zshenv.local" ]; then
  . "$HOME/.zshenv.local"
fi
