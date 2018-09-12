#!/bin/bash

. bin/helpers.sh

function install_step () {
    cd $1    
    . "install.sh"
    cd ..
}

install_step ubuntu
install_step vscode
