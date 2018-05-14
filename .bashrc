# shell opt
shopt -s cdspell
shopt -s cmdhist
shopt -s checkwinsize
shopt -s histappend

# exports
. ~/.exports

# aliases
. ~/.aliases

# Bash completion.
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi

# git
if [[ -f ~/.config/git/git-completion.bash ]]; then
    . ~/.config/git/git-completion.bash
fi

# prompt
if [[ -f ~/.bash_prompt ]]; then
    . ~/.bash_prompt
fi

# force write to history after every command
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
