# gcloudのPATH設定（kubectlはgcloud SDKのコンポーネントなので補完生成より先に通す）
source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"

# kubectlコマンド補完（fpathに生成し、kubectl更新時のみ再生成）
# バイナリのmtimeはzip展開由来で1980年固定のため、更新時に書き換わるbinディレクトリで判定する
if (( $+commands[kubectl] )) && [[ ! -f "$HOME/.zsh/completions/_kubectl" || "${commands[kubectl]:h}" -nt "$HOME/.zsh/completions/_kubectl" ]]; then
  kubectl completion zsh > "$HOME/.zsh/completions/_kubectl"
fi

# completion
autoload -Uz compinit
if [[ -n ${ZDOTDIR:-$HOME}/.zcompdump(#qN.mh+24) ]]; then
  compinit;
else
  compinit -C;
fi;

# gcloudコマンド補完
source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
