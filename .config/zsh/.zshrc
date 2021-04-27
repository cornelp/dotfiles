setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
unsetopt HIST_SAVE_NO_DUPS       # Write a duplicate event to the history file

autoload -U compinit; compinit

bindkey -v
export KEYTIMEOUT=1

zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

source "${ZDOTDIR}/aliases.zsh"
source "${ZDOTDIR}/cursor.zsh"
source "${ZDOTDIR}/prompt.zsh"
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
