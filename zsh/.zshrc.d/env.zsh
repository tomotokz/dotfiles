# Locale
export LANG=ja_JP.UTF-8

# Python
export PIPENV_VENV_IN_PROJECT=1
export PIPENV_MAX_DEPTH=4
P_BIN_PATH="$(python3 -m site --user-base)/bin"
export PATH="$PATH:$P_BIN_PATH"

# Java
export JAVA_HOME=`/usr/libexec/java_home -v 17`
export PATH="${JAVA_HOME}/bin:${PATH}"

# Node.js
export PATH=$HOME/.nodebrew/current/bin:$PATH

# PHP
export PATH=/Applications/MAMP/bin/php/php8.2.0/bin:$PATH

# Unique PATH
typeset -U PATH
