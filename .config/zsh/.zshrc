stty stop undef # does not freeze on Control + s

setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
unsetopt HIST_SAVE_NO_DUPS       # Write a duplicate event to the history file

autoload -U compinit; compinit
autoload -Uz colors && colors

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

# Helpers
source "${ZDOTDIR}/zsh-functions"

# Plugins
source "${ZDOTDIR}/aliases.zsh"
source "${ZDOTDIR}/cursor.zsh"
source "${ZDOTDIR}/prompt.zsh"
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"

export PATH=/opt/android-studio/bin:$PATH
export GOPATH=$HOME/Code/go
