PATH=/opt/homebrew/bin/:$PATH

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(opam env)"

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export EDITOR='nvim'
export CMAKE_GENERATOR="Ninja"
export NINJA_STATUS="[%p]"

alias os-update="$HOME/dotfiles/os-update.sh"
alias ls="eza -1 --icons"
alias lst="eza -1 --icons --tree --level=2"
alias cd="z"
alias nv="nvim ."
alias python="python3"
alias cdu="cd ../"
