export VIRTUAL_ENV_DISABLE_PROMPT=0
export PIPENV_VENV_IN_PROJECT=1

if [[ -d "$GIT_HUB_HOME/shell-tools" ]]; then;
    source "$GIT_HUB_HOME/doot-files/zshell/functions/functions.sh"
fi


if [[ ! -z "${GIT_HUB_HOME}" ]]; then;
    source "$GIT_HUB_HOME/doot-files/zshell/add-ons/add-ons.sh"
fi
