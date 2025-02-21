export VIRTUAL_ENV_DISABLE_PROMPT=0
export PIPENV_VENV_IN_PROJECT=1

# Check for UV installation
if [[ -f "$HOME/.local/bin/env" ]]; then;
    source "$HOME/.local/bin/env"
fi


# Check for the Shell Tools to be present
if [[ -d "$GIT_HUB_HOME/shell-tools" ]]; then;
    source "$GIT_HUB_HOME/doot-files/zshell/functions/functions.sh"
fi

# Check for the Add Ons like SDKMan, PyEnv, NVM, and Oh my ZSH
if [[ ! -z "${GIT_HUB_HOME}" ]]; then;
    source "$GIT_HUB_HOME/doot-files/zshell/add-ons/add-ons.sh"
fi