xbacklight -set 40
setxkbmap -option caps:escape
slstatus &
picom &
numlockx &
dunst &
~/.scripts/change-wall
unclutter -idle 3 &
exec dwm
