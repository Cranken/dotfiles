eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

xrandr --dpi 100

setxkbmap de
xrandr --output DP-3 --primary --mode 1920x1080 --rate 144 --pos 0x0
xrandr --output DP-2 --mode 1920x1080 --left-of DP-3
xrandr --output DVI-I-1 --mode 1920x1080 --pos 3840x0
xrandr --output DP-1 --mode 1920x1080 --same-as DP-2



exec i3
