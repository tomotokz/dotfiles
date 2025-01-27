apply-all:
  just vscode-apply
  just zsh-apply

# dotfilesの内容をlocalに適用する
vscode-apply:
  bash vscode/settings/index.sh
  bash vscode/extensions/apply.sh

# localの内容をdotfilesに適用する
vscode-save:
  bash vscode/extensions/save.sh

zsh-apply:
  bash zsh/index.sh
