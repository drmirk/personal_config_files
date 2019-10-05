alias ipython='ipython3'
alias upd='sudo apt update'
alias arm='sudo apt autoremove && sudo apt autoclean'
alias upg='sudo apt upgrade'
alias fstrim='sudo fstrim -a -v'
alias list='apt list --upgradable'
alias gifresize='function _gifresize(){ gifsicle --resize 360x_ $1 -o $(date +"%Y-%m-%d-%H%M%S").gif; rm $1; echo "Finished"; }; _gifresize'
alias gifcompress='function _gifcompress(){ gifsicle -O2 $1 -o $(date +"%Y-%m-%d-%H%M%S").gif; rm $1; echo "Finished"; }; _gifcompress'
alias pngresize='function _pngresize(){ convert -resize 360x720 $1 $(date +"%Y-%m-%d-%H%M%S").png; rm $1; echo "Finished"; }; _pngresize'
alias allstatus='function _battery(){ zenity --notification --text "Status:\nBattery: $(cat /sys/class/power_supply/BAT1/uevent | grep 'POWER_SUPPLY_CAPACITY=' | cut -d '=' -f2-)% \nAudio: $(amixer sget Master | grep 'Right:' | cut -d '[' -f2- | cut -d '[' -f2 | cut -d ']' -f1) - $(amixer sget Master | grep 'Right:' | cut -d '[' -f2- | cut -d ']' -f1) \nIP: $(curl ifconfig.me) \nTime: $(date +"%I:%M") ";}; _battery'



