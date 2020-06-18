# ~~~~~~~~~~~~~~ ZSH Defaults ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="strug"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=()

# exports that should be up here
export PATH="/usr/local/bin:$PATH"
export ZSH=/Users/ty/.oh-my-zsh # Path to your oh-my-zsh installation.
source $ZSH/oh-my-zsh.sh
#source /Users/ty/.oh-my-zsh/oh-my-zsh.sh

# User configuration

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



#===========================STUFF ADDED BY TY ===================
# Variables
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HYPHEN_INSENSITIVE="true"



# !!!!!!!!!!!!!!!!!!!!!!!!! ALIASES !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# For a full list of active aliases, run `alias`.
# General:
alias ls="ls -lGFha"
alias ga='git add'
alias gc='git checkout $1'
alias gcb='git checkout -b $1'
alias gl='git pull'
alias gp='git push'
alias gs='git stash'
alias gst='git status'
alias gthb='cd /Users/ty/src/github'
alias ml='cd ~/src/machine-learning'
alias octave='/usr/local/octave/3.8.0/bin/octave-3.8.0'
alias p='prometheus'
alias plz="sudo !!"
alias ports='sudo lsof -PiTCP -sTCP:LISTEN'
alias python='python3'
alias rpsql='brew services restart postgresql'
alias sb='cd /Users/ty/src/github/switchback'
alias sbw='cd /Users/ty/src/github/switchback/website'
alias src='cd /Users/ty/src'
alias vz='code ~/.zshrc'
alias wtf='echo "You got this, dawg!"'
alias zre="source ~/.zshrc"

## Sonar:
alias startsonar='cs && $SONAR/sonar.sh console'
alias stopsonar='$SONAR/sonar.sh stop'
alias restartsonar='$SONAR/sonar.sh restart'

## Docker
#alias stats='docker ps -q | xargs  docker stats'
alias dp='docker ps'
alias dls='docker container ls'
alias dlsa='docker container ls -a'
alias stats='sudo docker stats --format "table {{.Name}}\t{{.CPUPerc}}\t{{.MemUsage}}\t{{.MemPerc}}\t{{.NetIO}}\t{{.BlockIO}}\t{{.PIDs}}"'
alias statsf='sudo docker stats --no-stream --format "table {{.Name}}\t{{.CPUPerc}}\t{{.MemUsage}}\t{{.MemPerc}}\t{{.NetIO}}\t{{.BlockIO}}\t{{.PIDs}}"'
alias statsno='docker ps -q | xargs  docker stats --no-stream'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

## Other Exports that can be down here
export SONAR='/Users/ty/src/sonarqube-6.7.4/bin/macosx-universal-64/' #sonarqube
export SLEEP_BASE=/Users/ty/src/gitlab/drive-api-testing
export NVM_DIR="/Users/ty/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


####################################### FUNCTIONS ##################################
function gcm() {
    msg="$@"
    git commit -m $msg
    }

function hello() {
echo 'hi'
}


###################################################################################
