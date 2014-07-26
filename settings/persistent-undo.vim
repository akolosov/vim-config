" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo') && v:version > '702'
  silent !mkdir ~/.vim/tmp/backups > /dev/null 2>&1
  set undodir=~/.vim/tmp/backups
  set undofile
endif
