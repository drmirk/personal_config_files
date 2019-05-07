alias pip='pip3'
alias python='python3'
alias ipython='ipython3'
alias cython='cython3'
alias update='sudo apt update'
alias upgrade='sudo apt upgrade'
alias fstrim='sudo fstrim -a -v'
alias gifresize='function _gifresize(){ gifsicle --resize 360x_ $1 -o $(date +"%Y-%m-%d-%H%M%S").gif; rm $1; echo "Finished"; }; _gifresize'
alias gifcompress='function _gifcompress(){ gifsicle -O2 $1 -o $(date +"%Y-%m-%d-%H%M%S").gif; rm $1; echo "Finished"; }; _gifcompress'
alias pngresize='function _pngresize(){ convert -resize 360x720 $1 $(date +"%Y-%m-%d-%H%M%S").png; rm $1; echo "Finished"; }; _pngresize'




