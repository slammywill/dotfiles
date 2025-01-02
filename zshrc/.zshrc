~/dotfiles/zshrc/launch.sh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


alias gaa='git add .'
alias gl='git pull'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gp='git push'
alias gcd='git checkout dev'
alias gcm='git commit -m'
alias gdf='git diff'
alias lg='lazygit'

alias fzf='fzf --tmux'
alias v='nvim'
alias tm='source ~/dotfiles/zshrc/launch_tmux.sh'


OS=$(uname)
PLUGIN_PATH=""

if [[ $OS == "Darwin" ]]; then
    PLUGIN_PATH="/opt/homebrew/share"
    source ~/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme
elif [[ $OS == "Linux" ]]; then
    PLUGIN_PATH="/usr/share/zsh/plugins"
    source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
fi

source $PLUGIN_PATH/zsh-autosuggestions/zsh-autosuggestions.zsh
source $PLUGIN_PATH/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval "$(zoxide init zsh)"

