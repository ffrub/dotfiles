# homebrew symlink
fpath=("$HOMEBREW_PREFIX/share/zsh/site-functions" $fpath)

# enabel ctrl-x-e to edit command line
autoload -U edit-command-line

# prompt
autoload -U promptinit; promptinit
prompt spaceship
SPACESHIP_PROMPT_FIRST_PREFIX_SHOW=true
SPACESHIP_DIR_TRUNC=0

# aliases
alias dot="/usr/bin/git --git-dir=$HOME/code/dotfiles --work-tree=$HOME"
alias vim="nvim"
# plugins
# syntax highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
