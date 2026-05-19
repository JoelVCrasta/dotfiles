fpath+=( "$HOME/.cache/antidote/github.com/mattmc3/ez-compinit" )
source "$HOME/.cache/antidote/github.com/mattmc3/ez-compinit/ez-compinit.plugin.zsh"
fpath+=( "$HOME/.cache/antidote/github.com/zsh-users/zsh-completions/src" )
fpath+=( "$HOME/.cache/antidote/github.com/zsh-users/zsh-autosuggestions" )
source "$HOME/.cache/antidote/github.com/zsh-users/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh"
fpath+=( "$HOME/.cache/antidote/github.com/zsh-users/zsh-history-substring-search" )
source "$HOME/.cache/antidote/github.com/zsh-users/zsh-history-substring-search/zsh-history-substring-search.plugin.zsh"
if ! (( $+functions[zsh-defer] )); then
  fpath+=( "$HOME/.cache/antidote/github.com/romkatv/zsh-defer" )
  source "$HOME/.cache/antidote/github.com/romkatv/zsh-defer/zsh-defer.plugin.zsh"
fi
fpath+=( "$HOME/.cache/antidote/github.com/zdharma-continuum/fast-syntax-highlighting" )
zsh-defer source "$HOME/.cache/antidote/github.com/zdharma-continuum/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"
