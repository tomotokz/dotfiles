# dotfilesの内容をlocalに適用する
vscode-apply:
	sh vscode/settings/index.sh
	sh vscode/extensions/apply.sh


# localの内容をdotfilesに適用する
vscode-save:
	sh vscode/extensions/save.sh
