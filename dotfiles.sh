#!/bin/bash

DOTFILES_ROOT=$(pwd -P)

. bin/helpers.sh

function link_file () {
    rm $2
    ln -s $1 $2
}

function install_step () {
    cd $1    
    . "install.sh"


    for src in $(find "$DOTFILES_ROOT/$1" -name '*.symlink')
    do
        dst="$HOME/$(basename "${src%.*}")"
        link_file "$src" "$dst"
    done


    cd ..
}

install_step ubuntu
install_step git
install_step vscode
