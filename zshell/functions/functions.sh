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