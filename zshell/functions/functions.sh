uv_command=$(( $+commands[uv] ))
aws_command=$(( $+commands[aws] ))

if [[ $uv_command == 0 ]] ; then;
    echo 'UV is not present, Mamba may not be fully functional'
fi

if [[ $aws_command == 0 ]]; then;
    echo 'AWS CLI not detected, Bezos may not be fully functional'
fi


fpath=("$GIT_HUB_HOME/shell-tools/functions" $fpath)


autoload -U bezos mamba rattler

autoload -Uz compinit
compinit


rb(){
    local lb=$(git rev-parse --abbrev-ref HEAD)
    local commit=$(git merge-base "$lb" "$1")
    git reset --soft $commit
}