working_dir=$(pwd)
cd

[[ $- != *i* ]] && return
PS1='\u@\h \W $ '

export BASH_CONFIG_DIR="$(dirname "$(readlink -f ~/.bashrc)")"

while read fn 
do
    source "$BASH_CONFIG_DIR/local/$fn"
done < <(ls "$BASH_CONFIG_DIR/local" | grep -E '\.sh$')

while read fn 
do
    source "$BASH_CONFIG_DIR/modules/$fn"
done < <(ls "$BASH_CONFIG_DIR/modules" | grep -E '\.sh$')


cd "$working_dir"
