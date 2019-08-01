# exec openbox-session

# caps-lock as control and natural scrolling
xmodmap ~/.Xmodmap

# set up terminal colourschemes
xrdb ~/.Xresources

# set up the key repeat rate
xset r rate 200 30

# configure trackpad
syndaemon -t -d

# sync clipboards
autocutsel -fork &
autocutsel -selection PRIMARY -fork &

dropbox &

exec i3 -V >> ~/i3.log 2>&1
