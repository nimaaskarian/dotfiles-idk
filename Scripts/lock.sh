#! /bin/bash
export XDG_RUNTIME_DIR=/run/user/$(id -u)
export WAYLAND_DISPLAY=wayland-1
export SWAYSOCK=$XDG_RUNTIME_DIR/sway-ipc.$(id -u).$(pgrep -x sway).so

/sbin/dunstctl set-paused true
# /sbin/swaylock -i "$(< /home/nima/.wallpaper_path)"
/sbin/swaylock 
/sbin/dunstctl set-paused false
