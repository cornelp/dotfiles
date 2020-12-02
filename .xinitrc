export XDG_SESSION_TYPE=x11
setxkbmap -option caps:escape
slstatus &
picom &
numlockx &
dunst &
~/.scripts/change-wall
exec dwm
