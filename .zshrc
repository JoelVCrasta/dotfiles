# zsh history & environment settings
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000

setopt append_history
setopt share_history
setopt inc_append_history
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt extended_history
setopt AUTO_CD

# zsh-autosuggestions config
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
ZSH_AUTOSUGGEST_USE_ASYNC=1

# completions
autoload -Uz compinit
if [[ -n ~/.zcompdump(#qN.m-1) ]]; then
  compinit -C
else
  compinit
fi

# antidote
zstyle ':antidote:bundle' file ~/.config/antidote/plugins.txt
zstyle ':antidote:static' file ~/.config/antidote/plugins.zsh
source '/usr/share/zsh-antidote/antidote.zsh'
antidote load

# Aliases
alias cls="clear"
alias pr="pkill -9 eww && eww open bar"
alias xs="lsd -l"
alias xa="lsd -la"
alias mvd='cd "$(lsd | fzf)"'

# fnm
eval "$(fnm env --use-on-cd)"

# starship
eval "$(starship init zsh)"

# dotfiles
alias dotf="lazygit --git-dir=$HOME/.dotfiles --work-tree=$HOME"

# lmstudio cli
export PATH="$PATH:/home/joel/.lmstudio/bin"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

export PATH="$HOME/.local/bin:$PATH"

# jetbrains toolbox
export PATH="$PATH:/home/joel/.local/share/JetBrains/Toolbox/scripts"

