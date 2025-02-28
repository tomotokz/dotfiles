### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Powerlevel10k prompt
zinit ice depth=1
zinit light romkatv/powerlevel10k
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Load a few important annexes, with Turbo
zinit ice depth=1
zinit light zdharma-continuum/zinit-annex-as-monitor
zinit light zdharma-continuum/zinit-annex-bin-gem-node
zinit light zdharma-continuum/zinit-annex-patch-dl
zinit light zdharma-continuum/zinit-annex-rust

# zsh-autosuggestions: Suggest commands as you type
zinit ice wait'0' depth=1
zinit light zsh-users/zsh-autosuggestions

# zsh-autocomplete: Provides smart auto-completion
zinit ice wait'0' depth=1
zinit light marlonrichert/zsh-autocomplete

# anyframe: Directory navigation
zinit ice wait'0' depth=1
zinit light mollifier/anyframe

# bat: Syntax highlighting for cat command
zinit ice as"program" from"gh-r" mv"bat* -> bat" pick"bat/bat" wait'0'
zinit light sharkdp/bat

# zsh-syntax-highlighting: Highlights valid commands
zinit ice wait'0' depth=1
zinit light zsh-users/zsh-syntax-highlighting

# ディレクトリ移動履歴 (bindkey)
bindkey '^xb' anyframe-widget-cdr
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs
