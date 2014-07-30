" https://github.com/carlhuda/janus/blob/master/janus/vim/core/janus/after/plugin/vimrc_after.vim
" Customization
"
" This loads after the janus plugins so that janus-specific plugin mappings can
" be overwritten.

if filereadable(expand("~/.vim/after/.vimrc.after"))
  source ~/.vim/after/.vimrc.after
endif

if filereadable(expand("~/.vimrc.after"))
  source ~/.vimrc.after
endif

if filereadable(expand("~/.vimrc.after.local"))
  source ~/.vimrc.after.local
endif
