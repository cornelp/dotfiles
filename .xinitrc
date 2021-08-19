export _JAVA_AWT_WM_NONREPARENTING=1

xbacklight -set 40
setxkbmap -option caps:escape
slstatus &
picom &
numlockx &
dunst &
~/.scripts/change-wall
unclutter -idle 3 &

exec dwm
