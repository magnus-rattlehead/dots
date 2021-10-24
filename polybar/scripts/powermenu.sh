#!/usr/bin/env bash

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

dir="~/.config/rofi"
uptime=$(uptime -p | sed -e 's/up //g')

rofi_command="rofi -location 3 -xoffset -39 -yoffset 73 -theme $dir/powermenu.rasi"

# Options
shutdown=" Shutdown"
reboot=" Restart"
logout=" Logout"


# Variable passed to rofi
options="$logout\n$reboot\n$shutdown"

chosen="$(echo -e "$options" | $rofi_command -p "Power Menu" -dmenu -selected-row 0)"
case $chosen in
    $shutdown)
              sudo poweroff
        ;;
    $reboot)
              sudo reboot
        ;;
    $logout)
              bspc quit
        ;;
esac
