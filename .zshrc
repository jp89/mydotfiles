### OH-MY-ZSH SETTINGS ###
export ZSH=$HOME/.oh-my-zsh # Path to your oh-my-zsh installation.
ZSH_THEME="jarek" # Set name of the theme to load.
ENABLE_CORRECTION="true" # commands autocorrection
COMPLETION_WAITING_DOTS="true" # red dots when waiting for command
plugins=(git) # plugins to load

### USER SETTINGS ###
export PATH=$HOME/bin:/usr/local/bin:$PATH
source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='gvim'
 fi

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias aur_install="yaourt --noconfirm -Syu"
alias aur_search="yaourt -Ss" 

