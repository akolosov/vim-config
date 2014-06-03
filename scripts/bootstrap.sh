#!/usr/bin/env bash
############################  SETUP PARAMETERS
app_name='vim-config'
app_dir="$HOME/.vim"
[ -z "$git_uri" ] && git_uri='https://github.com/akolosov/vim-config.git'
[ -z "$VUNDLE_URI" ] && VUNDLE_URI="https://github.com/gmarik/vundle.git"

############################  BASIC SETUP TOOLS
msg() {
    echo "$1" >&2
}

success() {
    if [ "$ret" -eq '0' ]; then
        msg "[SUCCESS] - ${1}${2}"
    fi
}

error() {
    msg "[ERROR] - ${1}${2}"
    exit 1
}

program_exists() {
    local ret='0'
    type $1 >/dev/null 2>&1 || { local ret='1'; }

    # throw error on non-zero return value
    if [ ! "$ret" -eq '0' ]; then
    error "$2"
    fi
}

############################ SETUP FUNCTIONS

upgrade_repo() {
      msg "trying to update $1"

      if [ "$1" = "$app_name" ]; then
          cd "$app_dir" &&
          git pull origin
      fi

      if [ "$1" = "vundle" ]; then
          cd "$HOME/.vim/bundle/vundle" &&
          git pull origin master
      fi

      ret="$?"
      success "$2"
}

clone_repo() {
    program_exists "git" "Sorry, we cannot continue without GIT, please install it first."

    if [ ! -e "$app_dir" ]; then
        git clone --recursive "$git_uri" "$app_dir"
        ret="$?"
        success "$1"
    else
        upgrade_repo "$app_name"    "Successfully updated $app_name"
    fi
}

clone_vundle() {
    if [ ! -e "$HOME/.vim/bundle/vundle" ]; then
        git clone $VUNDLE_URI "$HOME/.vim/bundle/vundle"
    else
        upgrade_repo "vundle" "Successfully updated vundle"
    fi
    ret="$?"
    success "$1"
}

create_symlinks() {
    if [ ! -d "$app_dir/bundle" ]; then
        mkdir -p "$app_dir/bundle"
    fi

    ln -sf "$app_dir/vimrc" "$HOME/.vimrc"
    ln -sf "$app_dir/vimrc.after" "$HOME/.vimrc.after"
    ln -sf "$app_dir/vimrc.before" "$HOME/.vimrc.before"

    ret="$?"
    success "$1"
}

setup_vundle() {
    system_shell="$SHELL"
    export SHELL='/bin/sh'

    vim \
        "+set nomore" \
        +BundleInstall! \
        +BundleClean \
        +qall

    export SHELL="$system_shell"

    success "$1"
}

############################ MAIN()
program_exists "vim" "To install $app_name you first need to install Vim."

clone_repo "Successfully cloned $app_name"

create_symlinks "Setting up vim symlinks"

clone_vundle "Successfully cloned vundle"

setup_vundle "Now updating/installing plugins using Vundle"

msg "(C) by http://akolosov.github.io/"
