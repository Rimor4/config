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

alias lla="ls -lah"
alias q="exit"
alias up="cd .."

alias gig="git log --all --graph --decorate --oneline"
alias giga="git log --all --graph --decorate"
alias gis="git status"
alias gils="git ls-files"
alias gica="git commit --amend"
alias gican="git commit --amend --no-edit"

alias tt="tmux"
alias ttk="tmux kill-session -t"
alias tta="tmux attach-session -t"

alias tdlr="tldr"

# vi mode
bindkey -v

# oh-my-zsh theme
ZSH_THEME="amuse"

plugins=(
	git
	web-search
	jsontools
	z
	vi-mode
	zsh-syntax-highlighting
	zsh-autosuggestions
	fzf-tab
)

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

# opam configuration
[[ ! -r /home/lucas/.opam/opam-init/init.zsh ]] || source /home/lucas/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

# Path to opencv4
export OpenCV_DIR="/usr/lib/x86_64-linux-gnu/cmake/opencv4"
export CMAKE_PREFIX_PATH="$CMAKE_PREFIX_PATH:$OpenCV_DIR"
export TERM=xterm-256color

export PATH="$PATH:/mnt/c/Users/$USER/AppData/Local/Programs/cursor"
