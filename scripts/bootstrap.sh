#!/usr/bin/env bash
############################  SETUP PARAMETERS
app_name='VIM-config'
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

do_backup() {
    if [ -e "$2" ] || [ -e "$3" ] || [ -e "$4" ]; then
        today=`date +%Y%m%d_%s`
        for i in "$2" "$3" "$4"; do
            [ -e "$i" ] && [ ! -L "$i" ] && mv "$i" "$i.$today";
        done
        ret="$?"
        success "$1"
        debug
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

create_dirs() {
    if [ ! -d "$app_dir/bundle" ]; then
        mkdir -p "$app_dir/bundle"
    fi

		mkdir -p "$app_dir/tmp"

    ln -sf "$app_dir/vimrc" "$HOME/.vimrc"

    ret="$?"
    success "$1"
}

create_symlinks() {
    ln -sf "$app_dir/vimrc.after" "$HOME/.vimrc.after"
    ln -sf "$app_dir/vimrc.before" "$HOME/.vimrc.before"

    ret="$?"
    success "$1"
}

copy_examples() {
    cp -f "$app_dir/examples/vimrc.after.local" "$HOME/.vimrc.after.local"
    cp -f "$app_dir/examples/vimrc.before.local" "$HOME/.vimrc.before.local"
    cp -f "$app_dir/examples/vimrc.before.vundles" "$HOME/.vimrc.before.vundles"

    ret="$?"
    success "$1"
}

setup_vundle() {
    system_shell="$SHELL"
    export SHELL='/bin/sh'

    vim --noplugin +BundleInstall! +BundleClean +qall

    touch "$HOME/.vim/bundle/.installed"

    export SHELL="$system_shell"

    success "$1"
}

############################ MAIN()
program_exists "vim" "To install $app_name you first need to install Vim."

do_backup "Your old vim stuff has a suffix now and looks like .vim.`date +%Y%m%d%S`" "$HOME/.vim" "$HOME/.vimrc" "$HOME/.vimrc.after" "$HOME/.vimrc.before"

clone_repo "Successfully cloned $app_name"

create_dirs "Setting up vim dirs"

create_symlinks "Setting up vim symlinks"

clone_vundle "Successfully cloned vundle"

setup_vundle "Now updating/installing plugins using Vundle"

copy_examples "Setting up example vim local configs"

success "$app_name installed. For more information - http://akolosov.github.io/"
