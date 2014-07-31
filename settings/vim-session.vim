" Prevent vim-session from asking us to load the session.
" If you want to load the session, use :SaveSession and :OpenSession
let g:session_autosave = 'no'
let g:session_autoload = 'no'

if !exists('~/.vim/tmp/sessions')
	silent !mkdir ~/.vim/tmp/sessions > /dev/null 2>&1
endif

let g:session_directory='~/.vim/tmp/sessions'
