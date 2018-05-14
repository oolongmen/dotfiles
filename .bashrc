
shopt -s cdspell
shopt -s cmdhist
shopt -s checkwinsize

source ~/.exports
source ~/.aliases

# Bash completion.
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi

# git
if [ -f $HOME/.config/git ]; then
    source $HOME/.config/git/git-completion.bash
    source $HOME/.config/git/git-prompt.sh
fi

# prompt
if [ -f ~/.bash_prompt ]; then
    source ~/.bash_prompt
fi

# force write to history after every command
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
