# texlint
alias texlint='docker container run --rm --mount type=bind,source=".",target=/home/work_dir docker-textlint:1.0'

# Gumtree
export PATH=$HOME/labo/study/gumtree/dist/build/distributions/gumtree-4.0.0-beta4-SNAPSHOT/bin:$PATH

# Tcl-Tk
export PATH="/usr/local/opt/tcl-tk/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/tcl-tk/lib"
export CPPFLAGS="-I/usr/local/opt/tcl-tk/include"
export PKG_CONFIG_PATH="/usr/local/opt/tcl-tk/lib/pkgconfig"

# OpenBLAS
export OPENBLAS=$(brew --prefix openblas)
export CFLAGS="-I$OPENBLAS/include"
export LDFLAGS="-L$OPENBLAS/lib"
export PKG_CONFIG_PATH="$OPENBLAS/lib/pkgconfig"

#uv
eval "$(uv generate-shell-completion zsh)"
