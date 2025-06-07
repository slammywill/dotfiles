~/dotfiles/zshrc/launch.sh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.aliases

OS=$(uname)
PLUGIN_PATH=""

if [[ $OS == "Darwin" ]]; then
    PLUGIN_PATH="/opt/homebrew/share"
    source ~/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme
    export PATH="${PATH}:/Users/samwillems/Library/Python/3.11/bin"
    export PATH="${PATH}:/Applications/kitty.app/Contents/MacOS"
elif [[ $OS == "Linux" ]]; then
    PLUGIN_PATH="/usr/share/zsh/plugins"
    source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
fi

source $PLUGIN_PATH/zsh-autosuggestions/zsh-autosuggestions.zsh
source $PLUGIN_PATH/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

autosuggest-execute() {
  # Repeat last command if text buffer is empty
  if [[ -z $BUFFER ]]; then
    zle up-history
    zle accept-line

  # Execute autosuggestion command
  else
    zle autosuggest-accept
    zle accept-line
  fi
}
zle -N autosuggest-execute
bindkey '^ ' autosuggest-execute

export EDITOR="nvim"
export NVIM_LISTEN_ADDRESS=/tmp/nvim

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval "$(zoxide init zsh)"

