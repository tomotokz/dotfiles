CURRENT=$(cd $(dirname $0) && pwd)
BACKUP_FILE="$CURRENT/backup.zshrc"
BACKUP_DIR="$CURRENT/backup.zshrc.d"

backup() {
  if [ -f "$HOME/.zshrc" ]; then
    cp ~/.zshrc "$BACKUP_FILE"
    echo "settings: Backup created"
  fi
  if [ -d "$HOME/.zshrc.d" ]; then
    cp -r ~/.zshrc.d "$BACKUP_DIR"
    echo "settings: Backup created"
  fi
}

create_symlink() {
  rm -f ~/.zshrc
  rm -fr ~/.zshrc.d

  ln -s $CURRENT/.zshrc ~/.zshrc
  ln -s $CURRENT/.zshrc.d ~/.zshrc.d
}

backup && create_symlink
