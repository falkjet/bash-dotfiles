

alias ls='ls --color=auto'
alias speed-dreams="gtk-launch speed-dreams-svn"
alias nanosudo="sudo EDITOR=nano visudo"

alias restart="clear; source ~/.bashrc"
#alias restart="clear; exec bash"
alias starti3="startx ~/.xinitrc_i3"
alias tmux='systemd-run --scope --user tmux -2'
alias grep='grep --color'
alias la='ls -la'
alias lA='ls -lA'
alias clip="xclip -selection c"
alias paste="xclip -selection c -o"
alias pwdclip="pwd | xclip -selection c"
alias cdclip='cd $(xclip -selection c -o)'
alias extract="ark -ba"
alias lpc="launch pycharm ."
alias prisma="npx prisma"
