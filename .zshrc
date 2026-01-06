# zsh history
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000

setopt append_history
setopt share_history
setopt inc_append_history
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt extended_history

# Enable auto cd
setopt AUTO_CD

# zsh-autosuggestions config
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
ZSH_AUTOSUGGEST_USE_ASYNC=1

# antidote
source '/usr/share/zsh-antidote/antidote.zsh'
antidote load
source ~/.zsh_plugins.zsh

# completions
DISABLE_COMPFIX=true
autoload -Uz compinit
if [ "$(date +%j)" != "$(date -r ~/.zcompdump +%j 2>/dev/null)" ]; then
  compinit
else
  compinit -C
fi


# Aliases
alias cls="clear"
alias pr="pkill -9 eww && eww open bar"
alias xa="lsd -l"
alias mvd='cd "$(lsd | fzf)"'

# fnm
eval "$(fnm env --use-on-cd)"

# starship
eval "$(starship init zsh)"

# dotfiles
alias dotfiles='/usr/bin/git --git-dir=/home/joel/.dotfiles --work-tree=/home/joel'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/joel/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/joel/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/joel/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/joel/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/joel/.lmstudio/bin"
# End of LM Studio CLI section

