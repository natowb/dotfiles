# OH MY ZSH
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(git)

source $ZSH/oh-my-zsh.sh
# END OH MY ZSH

# PATH UPDATES
export PATH=$HOME/.local/bin:$PATH
