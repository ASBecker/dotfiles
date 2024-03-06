source ~/.zshenv_private

alias v=nvim

# ls
alias ls='ls --color=auto'
alias ll='ls -la'
# alias la='exa -laghm@ --all --icons --git --color=always'
alias la='ls -lathr'

# finds all files recursively and sorts by last modification, ignore hidden files
alias last='find . -type f -not -path "*/\.*" -exec ls -lrt {} +'

alias t='tmux'
alias dot='cd $GHREPOS/dotfiles'

# git
alias gp='git pull'
alias gs='git status'
alias lg='lazygit'

export DOTFILES="$HOME/dotfiles"
export SCRIPTS="$DOTFILES/scripts"
export ZETTELKASTEN="/Users/$USER/Library/CloudStorage/ProtonDrive-anton@becker.md/zettelkasten"

export PATH="$PATH:$SCRIPTS"

