launch() {
    $@ > /dev/null 2>&1 & disown;
}

backup() {
    cp $1 $1.bak
}

restart_plasma() {
    killall kwin_x11; kwin_x11 &>/dev/null &disown
    killall plasmashell ; plasmashell &>/dev/null &disown
}

loc() {
    for file in $@; do cut -d "#" -f1 $file | grep -vE '^\s*$'; done | wc -l
}
