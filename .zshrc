# homebrew symlink
fpath=("$HOMEBREW_PREFIX/share/zsh/site-functions" $fpath)

# prompt
autoload -U promptinit; promptinit
prompt spaceship

# aliases
alias dotfiles="/usr/bin/git --git-dir=$HOME/code/dotfiles --work-tree=$HOME"
alias vim="nvim"
# plugins
# syntax highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
