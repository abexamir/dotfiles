# general confs
plugins=( git zsh-syntax-highlighting kubectl docker python web-search zsh-autosuggestions )
export ZSH="/home/abexamir/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
autoload -U compinit; compinit
export TERM=xterm-256color
export PATH=$PATH:/usr/local/bin
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source $ZSH/oh-my-zsh.sh
# general aliases
alias curl=curlie
alias cat=bat
alias ls=exa
alias x="xsel -ib" alias rm='rm -i'
alias python=python3
alias warp='warp-cli enable-always-on && warp-cli connect 2>/dev/null'
alias dwarp='warp-cli disconnect && warp-cli disable-always-on 2>/dev/null'
alias h='cd ~/workspace/hamravesh'
alias p='cd ~/workspace/personal'
alias nv=nvim

# vim mode
set -o vi
bindkey '^R' history-incremental-search-backward

# exa alias
if [ -x "$(command -v exa)" ]; then
    alias ls="exa"
    alias la="exa --long --all --group"
fi

# kubecolor alias
if [ -x "$(command -v kubecolor)" ]; then
    alias kubectl="kubecolor"
fi

# kubectl-neat-diff
export KUBECTL_EXTERNAL_DIFF=kubectl-neat-diff

# kubectl completion
source <(kubectl completion zsh)
compdef __start_kubectl k

# krew
export PATH="${PATH}:${HOME}/.krew/bin"

# docker aliases
alias doco='docker-compose'
alias docou='docker-compose up'
alias docoud='docker-compose up -d'
alias docod='docker-compose down'
alias docor='docker-compose restart'
alias docol='docker-compose logs'
alias docolf='docker-compose logs -f'

# lazydocker
alias ldocker='lazydocker'

# ipython vim mode alias
alias ipython='ipython --TerminalInteractiveShell.editing_mode=vi'


# default editor
export EDITOR=vim

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# wireguard aliases
export WG_PROFILE='zbook'
alias wgd='(wg-quick down $WG_PROFILE)'
alias wgu='(wg-quick up $WG_PROFILE)'

# rust
source $HOME/.cargo/env

# fuck
eval $(thefuck --alias)

# proxy
#export http_proxy="http://127.0.0.1:2080"
#export https_proxy="http://127.0.0.1:2080"

# github copilot aliases
alias copilot="gh copilot"
alias ghcs="gh copilot suggest"
alias ghce="gh copilot explain"

# openai envs
export OPENAI_API_KEY="KEY"
export OPENAI_KEY=$OPENAI_API_KEY


