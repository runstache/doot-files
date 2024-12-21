# Oh My Z-Shell Configuration


if [[ -d "$HOME/.oh-my-zsh" ]]; then;

    export ZSH="$HOME/.oh-my-zsh"
    ZSH_THEME="agnoster"

    plugins=(git virtualenv)

    source $ZSH/oh-my-zsh.sh
fi


if  [[ -d "$HOME/.pyenv" ]]; then;
    eval "$(pyenv init -)"
fi

if [[ -d "$HOME/.nvm" ]]; then;

    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi

if [[ -d "$HOME/.sdkman" ]]; then;

    export SDKMAN_DIR="$HOME/.sdkman"
    [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
fi