#export PS1="\d : \t \u@\h : \w \n$ "

if echo "$-" | grep i > /dev/null; then
    exec zsh;
fi

export NVM_DIR="/Users/acurtisjensen/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$HOME/.yarn/bin:$PATH"
