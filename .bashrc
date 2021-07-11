working_dir=$(pwd)
cd

[[ $- != *i* ]] && return
PS1='\u@\h \W $'
for sn in $HOME/.bashrc.d/*.sh; do source $sn; done

cd "$working_dir"
