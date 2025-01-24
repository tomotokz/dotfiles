# Load Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Main settings loader
ZSHRC_DIR="$HOME/.zshrc.d"
for file in $ZSHRC_DIR/*.zsh; do
  source "$file"
done
