PROMPT='%(?.%F{green}√.%F{red}x)%f %B%F{#d8d8d8}%1~%f%b > '

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{#d8d8d8}(%b)'
zstyle ':vcs_info:*' enable git
