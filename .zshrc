# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
	source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

alias q="exit"
alias ll="ls -lah"
alias up="cd .."

alias gig="git log --all --graph --decorate --oneline"
alias giga="git log --all --graph --decorate"
alias gis="git status"
alias gica="git commit --amend"
alias gican="git commit --amend --no-edit"

alias tt="tmux"
alias ttk="tmux kill-session -t"
alias tta="tmux attach-session -t"

alias tdlr="tldr"

# vi mode
bindkey -v

# oh-my-zsh theme
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git web-search jsontools z vi-mode zsh-syntax-highlighting zsh-autosuggestions)

# <Ctrl+" "> 接受 auto-suggestion 的补全建议
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^\' autosuggest-accept

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

cd ~

# Path to rr debugger
export PATH="/opt/rr-5.7.0-Linux-x86_64/bin:$PATH"

mcd() {
	mkdir -p "$1" && cd "$1"
}
