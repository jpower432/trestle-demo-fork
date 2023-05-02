#!/bin/bash

source ./$(dirname "${BASH_SOURCE[0]}")/dependencies.sh

build () {
    install_go
    install_cosign
    install_gcr
    install_oras
    install_pandoc
}

install_demo_utils () {
    install_gh_cli
    install_epel
    install_utils

}


$@
