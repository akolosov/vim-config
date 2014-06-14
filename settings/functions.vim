" Creates a session
function! MakeSession()
    let b:sessionfile = 'project.vim'
    exe "mksession! " . b:sessionfile
endfunction

" Updates a session, BUT ONLY IF IT ALREADY EXISTS
function! UpdateSession()
    if argc()==0
        let b:sessionfile = "project.vim"
        if (filereadable(b:sessionfile))
            exe "mksession! " . b:sessionfile
            echo "updating session"
        endif
    endif
endfunction

" Loads a session if it exists
function! LoadSession()
    if argc() == 0
        let b:sessionfile = "project.vim"
        if (filereadable(b:sessionfile))
            exe 'source ' b:sessionfile
        else
            echo "No session loaded."
        endif
    else
        let b:sessionfile = ""
        let b:sessiondir = ""
    endif
endfunction

" Find && Replace in all opened buffers
function! Replace()
    let s:word = input("Replace " . expand('<cword>') . " with:")
    :exe 'bufdo! %s/\<' . expand('<cword>') . '\>/' . s:word . '/gce'
    :unlet! s:word
endfunction

" Toggle ' to " or " to '
function! ToggleQuote()
    let q = searchpos("'", 'n', line('.'))
    let qb = searchpos("'", 'bn', line('.'))
    let dq = searchpos('"', 'n', line('.'))
    let dqb = searchpos('"', 'bn', line('.'))

    if q[0] > 0 && qb[0] > 0 && (dq[0] == 0 || dq[0] > q[0])
        execute "normal mzcs'\"`z"
    elseif dq[0] > 0 && dqb[0] > 0
        execute "normal mzcs\"'`z"
    endif
endfunction

" Toggle readonly mode
function! ToggleReadonly()
  if &readonly
    set noreadonly
    set modifiable
  else
    set readonly
    set nomodifiable
  endif
endfunction

" Strip trailing whitespace
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
