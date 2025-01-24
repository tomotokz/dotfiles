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

# Gumtree
export PATH=$HOME/labo/study/gumtree/dist/build/distributions/gumtree-4.0.0-beta4-SNAPSHOT/bin:$PATH

# Tcl-Tk
export PATH="/usr/local/opt/tcl-tk/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/tcl-tk/lib"
export CPPFLAGS="-I/usr/local/opt/tcl-tk/include"
export PKG_CONFIG_PATH="/usr/local/opt/tcl-tk/lib/pkgconfig"

# PHP
export PATH=/Applications/MAMP/bin/php/php8.2.0/bin:$PATH

# OpenBLAS
export OPENBLAS=$(brew --prefix openblas)
export CFLAGS="-I$OPENBLAS/include"
export LDFLAGS="-L$OPENBLAS/lib"
export PKG_CONFIG_PATH="$OPENBLAS/lib/pkgconfig"

# Unique PATH
typeset -U PATH
