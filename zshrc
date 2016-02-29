# Path to your oh-my-zsh installation.
#export ZSH=$HOME/.oh-my-zsh
export CLICOLOR=1
export EDITOR=/usr/bin/vim;
ZSH=$HOME/.omz

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="cletus_one"
#ZSH_THEME="agnoster"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

#export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"



#export PS1="\d : \t \u@\h : \w \n$ "

#my aliases
alias ls="ls -G"
alias py="python"
alias epoch='date +%s | pbcopy'
alias g='git'
alias syncwait='perl ~/scripts/syncwait'

bindkey -v

# Normal Bindings
bindkey '^U'    backward-kill-line                      # Ctrl + U
bindkey '^A'    beginning-of-line                       # Ctrl + A
bindkey '^[OH'  beginning-of-line                       # Home
bindkey '^[[1~' beginning-of-line                       # Home
bindkey '^[[H'  beginning-of-line                       # Home

bindkey '^K'    kill-line                               # Ctrl + K
bindkey '^E'    end-of-line                             # Ctrl + E
bindkey '^[OF'  end-of-line                             # End
bindkey '^[[4~' end-of-line                             # End
bindkey '^[[F'  end-of-line                             # End

bindkey '^R'    history-incremental-pattern-search-backward # Ctrl + R
bindkey '^S'    history-incremental-pattern-search-forward # Ctrl + S
bindkey '^[[A'  up-line-or-search                       # Up Arrow
bindkey '^[OA'  up-line-or-search                       # Up Arrow
bindkey '^[[5~' up-line-or-history                      #
bindkey '^[[B'  down-line-or-search                     # Down Arrow
bindkey '^[OB'  down-line-or-search                     # Down Arrow
bindkey '^[[6~' down-line-or-history                    #
bindkey ' '     magic-space                             # Space

bindkey '^[[1;2C' forward-word                          # Ctrl + Right Arrow
bindkey '^[[1;2D' backward-word                         # Ctrl + Left Arrow
bindkey '^[[Z'    reverse-menu-complete                 # Shift + Tab

bindkey '^[[3~'  delete-char                            # Delete
bindkey '^[[3~'  delete-char                            # Delete
bindkey '^[3;5~' delete-char                            # Delete
bindkey '^[[3~'  delete-char                            # Delete
bindkey '^?'     backward-delete-char                   # Backspace

# Specific Bindings
bindkey "^[m" copy-earlier-word                         # http://chneukirchen.org/blog/archive/2013/03/10-fresh-zsh-tricks-you-may-not-know.html


export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
#source /usr/local/bin/virtualenvwrapper.sh
export PATH=/usr/local/bin:$PATH
