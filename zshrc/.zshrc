~/dotfiles/zshrc/launch.sh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# ALIASES

# Git
alias gaa='git add .'
alias gl='git pull'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gp='git push'
alias gcd='git checkout $(git_development_branch)'
alias gcm='git commit -m'

# Misc
alias tm='tmux attach || tmux new'
alias fzf='fzf --tmux'
alias v='nvim'

# The following lines were added by compinstall
zstyle :compinstall filename '/home/sam/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v

OS=$(uname)

if [[ $OS == "Darwin" ]]; then
  source ~/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme
elif [[ $OS == "Linux" ]]; then
  source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval "$(zoxide init zsh)"
