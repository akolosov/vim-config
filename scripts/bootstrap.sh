#!/usr/bin/env bash
############################  SETUP PARAMETERS
app_name='VIM-config'
app_dir="$HOME/.vim"

[ -z "$git_uri" ] && git_uri='https://github.com/akolosov/vim-config.git'

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
        upgrade_repo "$app_name" "Successfully updated $app_name"
    fi
}

clone_vim_plug() {
    program_exists "curl" "Sorry, we cannot continue without CURL, please install it first."

    mkdir -p ~/.vim/autoload
    curl -fLo ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    ret="$?"
    success "$1"
}

create_dirs() {
    mkdir -p "$app_dir/plugged"

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
    cp -f "$app_dir/examples/vimrc.before.plugins" "$HOME/.vimrc.before.plugins"

    ret="$?"
    success "$1"
}

setup_vim_plug() {
    system_shell="$SHELL"
    export SHELL='/bin/sh'

    vim --noplugin +PlugInstall +PlugClean! +qa

    touch "$HOME/.vim/plugged/.installed"

    export SHELL="$system_shell"

    success "$1"
}

############################ MAIN()
program_exists "vim" "To install $app_name you first need to install Vim."

do_backup "Your old vim stuff has a suffix now and looks like .vim.`date +%Y%m%d%S`" "$HOME/.vim" "$HOME/.vimrc" "$HOME/.vimrc.after" "$HOME/.vimrc.before"

clone_repo "Successfully cloned $app_name"

create_dirs "Setting up vim dirs"

clone_vim_plug "VIM-Plug successfully cloned"

create_symlinks "Setting up vim symlinks"

setup_vim_plug "Now updating/installing plugins using VIM-Plug"

copy_examples "Setting up example vim local configs"

success "$app_name installed. For more information - http://akolosov.github.io/"
