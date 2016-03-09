# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="cletus_one"
#ZSH_THEME="agnoster"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

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
alias cjssh="ssh cjensenb@cjensen.bluehoststaff.com"
alias xampp="sudo /Applications/XAMPP/xamppfiles/xampp"
alias alpha="ssh -A main.cjensen.alpha.bluehost.com"
alias zug="ssh -A -p5190 zugzug.bluehost.com"
alias ssb="$HOME/scripts/firefox-ssh.sh"
alias ct="casperjs test"
alias ls="ls -G"
alias py="python"
alias lonny="zug ssh -A ljepson.alpha.bluehost.com"
alias c='./casper'
alias cdcasper='cd ~/Dropbox/casper-qa/CasperJS/'
alias cvps='./casper --live --bh apps/signup/signup_test.js -c="--vps --self_destruct=1" -d'
alias zug='ssh -A -t -p5190 zugzug2.bluehost.com ssh'
alias sshzug='ssh -A -p5190 zugzug2.bluehost.com'
alias epoch='date +%s | pbcopy'
#alias alphafs="sshfs $USER@main.$USER.alpha.bluehost.com:/var/hp/ ~/mnt/alpha -ofollow_symlinks,reconnect,workaround=rename"
alias alphafs='perl ~/Google\ Drive/sshfs_mounts/mount_alpha.v0.2.pl'
alias alphafsu='perl ~/Google\ Drive/sshfs_mounts/umount_alpha.v0.2.pl'
alias g='git'
alias syncwait='perl ~/scripts/syncwait'

#tproxi
alias tssh="/Users/cjensen/.scripts/tproxi.pl"

#docker
alias dockstart='~/.scripts/boot2docker-startup.sh; dockstarteval'
alias dockstarteval='eval "$(boot2docker shellinit)"'

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
