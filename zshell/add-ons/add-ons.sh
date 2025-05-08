# Oh My Z-Shell Configuration
if [[ -d "$HOME/.oh-my-zsh" ]]; then;

    export ZSH="$HOME/.oh-my-zsh"
    ZSH_THEME="agnoster"

    plugins=(git virtualenv)

    source $ZSH/oh-my-zsh.sh
fi

# PyEnv Python Version Manager
if  [[ -d "$HOME/.pyenv" ]]; then;
    eval "$(pyenv init -)"
fi

# Node Version Manager
if [[ -d "$HOME/.nvm" ]]; then;

    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi

# SDK Man
if [[ -d "$HOME/.sdkman" ]]; then;

    export SDKMAN_DIR="$HOME/.sdkman"
    [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
fi

# Spark Configuration
if [[ ! -z "${SPARK_HOME}" ]]; then;
    export PYSPARK_PYTHON="python"

    if [[ -d "$HOME/spark_config" ]]; then;        
        export SPARK_CONF_DIR="$HOME/spark_config"
    fi
fi