uv_command=$(( $+commands[uv] ))
aws_command=$(( $+commands[aws] ))

if [[ $uv_command == 0 ]] ; then;
    echo 'UV is not present, Rattler may not be fully functional'
fi

if [[ $aws_command == 0 ]]; then;
    echo 'AWS CLI not detected, Bezos may not be fully functional'
fi


fpath=("$GIT_HUB_HOME/shell-tools/functions" $fpath)

_rattler() {
    compadd install sync rm activate sca coverage
}


_bezos() {
    compadd connect creds bastion list
}

autoload -U bezos rattler

autoload -Uz compinit
compinit

compdef _rattler rattler 
compdef _bezos bezos