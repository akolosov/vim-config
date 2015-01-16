if filereadable(expand("~/.vimrc.after"))
  source ~/.vimrc.after
endif

if filereadable(expand("~/.vimrc.after.local"))
  source ~/.vimrc.after.local
endif
