PATH=/opt/homebrew/bin/:$PATH
PATH=/opt/homebrew/opt/llvm/bin:$PATH

###########
# Plugins #
###########
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(opam env)"

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

###########
# Exports #
###########
export EDITOR='nvim'
export CMAKE_GENERATOR="Ninja"
export NINJA_STATUS="[%p]"
export GPG_TTY=$(tty)
export STARSHIP_CONFIG=~/.config/starship/starship.toml
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"

###########
# Aliases #
###########
alias os-update="$HOME/dotfiles/os-update.sh"
alias ls="eza -1 --icons"
alias lst="eza -1 --icons --tree --level=2"
alias cd="z"
alias nv="nvim ."
alias cdu="cd ../"
alias gc="git commit -m"
alias ga="git add --all"
alias gp="git push"
alias gu="git submodule update --init --recursive"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
