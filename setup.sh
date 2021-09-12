#!/bin/zsh
BASH_CONFIG_DIR="$(dirname "$(readlink -f $0)")"

mkdir -p "$BASH_CONFIG_DIR/local"
if [ ! -f "$BASH_CONFIG_DIR/enabled-modules" ]
then
    echo modules > "$BASH_CONFIG_DIR/enabled-modules"
fi

if [ -f ~/.bashrc ]
then
    [ "$(readlink -f ~/.bashrc)" = "$BASH_CONFIG_DIR/.bashrc" ] && exit 0;
    mv ~/.bashrc "$BASH_CONFIG_DIR/local/old_bashrc.zsh"
fi
ln -s "$BASH_CONFIG_DIR/.bashrc" ~/.bashrc