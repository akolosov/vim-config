if filereadable(expand("~/.vimrc.after"))
  source ~/.vimrc.after
endif

if filereadable(expand("~/.vimrc.after.local"))
  source ~/.vimrc.after.local
endif

" ================ Custom Keymap ========================
if filereadable(expand("~/.vim/vimrc.keymap"))
  source ~/.vim/vimrc.keymap
endif

if filereadable(expand("~/.vimrc.keymap.local"))
  source ~/.vimrc.keymap.local
endif

