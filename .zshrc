# path
path+=("$HOME/bin/")
export PATH
# homebrew symlink
fpath=("$HOMEBREW_PREFIX/share/zsh/site-functions" $fpath)

# editor
export EDITOR=nvim

# enabel ctrl-x-e to edit command line
autoload -U edit-command-line

# prompt
source "$HOMEBREW_PREFIX/opt/spaceship/spaceship.zsh"

# main aliases
alias dot="/usr/bin/git --git-dir=$HOME/code/dotfiles --work-tree=$HOME"
alias vim="nvim"
alias v="nvim ."
alias zconfig="nvim ~/.zshrc"
alias remaps="nvim ~./.config/nvim/lua/finn/remap.lua"

# map python to python3
alias python="python3"
alias pip="pip3"

# note aliases
alias pn="pipenote"

# git aliases
alias glo="git log --oneline"
alias gs="git status"

# nav aliases
alias cdvim="cd ~/.config/nvim/"
alias cdcode"=cd ~/code/"
alias cdhome="cd ~"


# plugins
# syntax highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

