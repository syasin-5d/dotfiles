#!/bin/sh

xset +fp /usr/local/share/fonts
setxkbmap -option ctrl:nocaps
xset r rate 200 40

redshift -l 35:135 &
xpywm 2>/tmp/xpywm.log &
xpymon 2>/tmp/xwpymon.log &
# xpylog 2>/tmp/xpylog.log &
# keynav 2>/tmp/keynav.log &


# export QT_IM_MODULE=xim
# export DefaultImModule=fcitx
# export GTK_IM_MODULE=fcitx
# export QT_IM_MODULE=fcitx
# export XMODIFIERS=@im=fcitx
# fcitx-autostart
export GTK_IM_MODULE=xim
export XMODIFIERS=@im=uim
uim-xim &
urxvt -e "tmux"
# xinput set-prop 12 "Device Enabled" 0
