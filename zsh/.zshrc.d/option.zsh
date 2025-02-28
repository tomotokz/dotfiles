setopt inc_append_history        # Append history to the file as it is created
setopt share_history             # Share history across multiple shell sessions
setopt hist_ignore_all_dups      # Ignore duplicate entries in history
setopt hist_save_no_dups         # Do not save duplicate entries
setopt extended_history          # Save timestamps in the history file
setopt hist_expire_dups_first    # Remove duplicates first if history size exceeds limit
setopt auto_param_keys      # Auto complete for key-value pairs
setopt auto_cd              # Auto cd to directories without 'cd' command
setopt correct              # Spell correction for commands
setopt correct_all          # Spell correction for full command line
setopt auto_param_slash     # Auto add '/' at end of directories
setopt mark_dirs            # Mark directories with '/'
setopt auto_menu            # Auto menu completion for repeated key press
setopt interactive_comments # Treat '#' as comments
setopt magic_equal_subst    # Expand variables in arguments like --prefix=$HOME
setopt complete_in_word     # Complete at cursor position
setopt print_eight_bit      # Enable displaying Japanese characters in file names


# 色の設定
export LSCOLORS=Exfxcxdxbxegedabagacad
export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
autoload -Uz colors
colors
zstyle ':completion:*' list-colors "${LS_COLORS}"

PROMPT="%F{green}%n%f %F{cyan}%f:%F{blue}%~%f"$'\n'"%# "

# zsh completion settings
autoload -Uz compinit && compinit
zstyle ':completion:*:commands' rehash 1
zstyle ':completion:*:default' menu select=2
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' '+m:{[:upper:]}={[:lower:]}'
zstyle ':completion:*' format '%B%F{blue}%d%f%b'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
