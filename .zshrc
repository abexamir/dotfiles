if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export ZSH="/home/abexamir/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=( git zsh-syntax-highlighting zsh-autosuggestions kubectl docker python )
source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

if [ -x "$(command -v exa)" ]; then
    alias ls="exa"
    alias la="exa --long --all --group"
fi

#general aliases
alias curl=curlie
alias cat=bat
alias ls=exa
alias x="xsel -ib"
alias rm='rm -i'
alias python=python3
alias warp='warp-cli enable-always-on && warp-cli connect 2>/dev/null'
alias dwarp='warp-cli disconnect && warp-cli disable-always-on 2>/dev/null'
alias h='cd ~/workspace/hamravesh'
alias p='cd ~/workspace/personal'
compdef __start_kubectl k

#krew
export PATH="${PATH}:${HOME}/.krew/bin"

#default editor
export EDITOR=vim

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

#wireguard
export WG_PROFILE='garuda'
alias wgd='(wg-quick down $WG_PROFILE)'
alias wgu='(wg-quick up $WG_PROFILE)'

#rust
source $HOME/.cargo/env

# vim mode
set -o vi

#fuck
eval $(thefuck --alias)

autoload -U compinit; compinit
