#!/bin/bash
# dotfiles 内の extensions を正として、ローカルの拡張を更新するスクリプト

CURRENT=$(cd "$(dirname "$0")" && pwd)

# Usage function
usage() {
  echo "Usage: $0 [--remove | --keep]"
  echo "  --remove   Remove extensions that are not in the dotfiles list."
  echo "  --keep     Keep local extensions that are not in the dotfiles list (default)."
  exit 1
}

# Parse arguments
REMOVE=false
if [ "$#" -eq 1 ]; then
  case "$1" in
    --remove)
      REMOVE=true
      ;;
    --keep)
      REMOVE=false
      ;;
    *)
      usage
      ;;
  esac
elif [ "$#" -gt 1 ]; then
  usage
fi

# Backup current extensions list
code --list-extensions > "$CURRENT/backup_extensions"

# Install extensions from dotfiles that are not in local
comm -23 <(sort "$CURRENT/extensions") <(sort "$CURRENT/backup_extensions") | while read -r extension; do
  code --install-extension "$extension"
  echo "Installed $extension"
done

# Remove local extensions not in the dotfiles list (if --remove is specified)
if [ "$REMOVE" = true ]; then
  comm -13 <(sort "$CURRENT/extensions") <(sort "$CURRENT/backup_extensions") | while read -r extension; do
    code --uninstall-extension "$extension"
    echo "Uninstalled $extension"
  done
else
  echo "Skipped uninstalling extensions not listed in dotfiles (--keep)."
fi
