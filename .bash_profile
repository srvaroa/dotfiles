# ~/.bash_profile: executed by bash for login shells
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

if [ -f ~/.aliases ]; then
    source ~/.aliases
fi

if [ -f ~/.env ]; then
    source ~/.env
fi
