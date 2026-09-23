# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add in Powerlevel10k
zinit ice depth=1; zinit light romkatv/powerlevel10k

# Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab
zinit light MichaelAquilina/zsh-you-should-use

# Add in snippets
zinit snippet OMZL::git.zsh
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::command-not-found

# Load completions
autoload -Uz compinit && compinit

zinit cdreplay -q

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Keybindings
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey '^[w' kill-region

# History
HISTSIZE=100000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# Aliases
alias ls='eza --icons'
alias vim='nvim'
alias c='clear'
alias ll='eza -lah --icons --git'
alias la='eza -a --icons'
alias lt='eza --tree --level=2 --icons'
alias grep='grep --color=auto'
alias update='sudo apt update && sudo apt upgrade'
alias mkdir='mkdir -pv'
alias bat='batcat'
alias df='df -h'
alias free='free -h'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

#BATCAT ColorScheme
export BAT_THEME="gruvbox-dark"

#Better preview
export FZF_DEFAULT_OPTS="
--height=40%
--layout=reverse
--border
--preview '
if [ -d {} ]; then
    eza --tree --level=2 --icons {}
elif file --mime-type -b {} | grep -q zip; then
    unzip -l {}
elif file --mime-type -b {} | grep -q image; then
    chafa --symbols=block --size=40x20 {}
else
    batcat --color=always --style=numbers --line-range=:500 {}
fi
'
--preview-window=right:65%:wrap
"

# Better Ctrl+T
export FZF_CTRL_T_OPTS="
--preview '
if [ -d {} ]; then
    eza --tree --level=2 --icons {}
elif file --mime-type -b {} | grep -q zip; then
    unzip -Z1 {} | head -200
elif file --mime-type -b {} | grep -q image; then
    chafa --symbols=block --size=40x20 {}
else
    batcat --color=always --style=numbers --line-range=:500 {}
fi
'
--preview-window=right:65%:wrap
"

# Better Ctrl+R
export FZF_CTRL_R_OPTS="
--border
--preview-window=hidden
"

# Better Alt+C
export FZF_ALT_C_OPTS="
--preview 'eza --tree --level=3 --icons {}'
--preview-window=right:65%:wrap
"

#Batcat+FZF via cat function 
cat() {
    batcat --color=always --paging=never "$1" |
    fzf \
        --ansi \
        --no-sort \
        --layout=reverse \
        --height=100% \
        --border \
        --prompt="Viewing > " \
        --preview='' \
        --disabled
}


# Shell integrations
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"

