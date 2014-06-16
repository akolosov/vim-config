" Creates a session
function! MakeSession()
    exe "mksession! " . g:sessionfile
endfunction

" Updates a session, BUT ONLY IF IT ALREADY EXISTS
function! UpdateSession()
    if argc()==0
        if (filereadable(g:sessionfile))
            exe "mksession! " . g:sessionfile
            echo "updating session"
        endif
    endif
endfunction

" Loads a session if it exists
function! LoadSession()
    if argc() == 0
        if (filereadable(g:sessionfile))
            exe 'source ' g:sessionfile
					else
            echo "No session loaded."
        endif
    endif
endfunction

" Search for files
function! SearchForFiles()
    let s:word = input("[IN FILENAMES] Search for: ")
    :execute 'AgFile ' . s:word
    :unlet! s:word
endfunction


" Search in files
function! SearchInFiles()
    let s:word = input("[IN FILES] Search for: ")
    :execute 'Ag ' . s:word
    :unlet! s:word
endfunction

" Search in current file
function! SearchInFile()
    let s:word = input("[IN CURRENT FILE] Search for: ")
    :execute '/' . s:word . '/'
    :unlet! s:word
		return @/ 
endfunction

" Find && Replace in all opened buffers
function! Replace()
    let s:word = input("Replace " . expand('<cword>') . " with:")
    :execute '%s/\<' . expand('<cword>') . '\>/' . s:word . '/gce'
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

" Intelligently close a window 
" (if there are multiple windows into the same buffer)
" or kill the buffer entirely if it's the last window looking into that buffer
function! CloseWindowOrKillBuffer()
  let number_of_windows_to_this_buffer = len(filter(range(1, winnr('$')), "winbufnr(v:val) == bufnr('%')"))

  " We should never bdelete a nerd tree
  if matchstr(expand("%"), 'NERD') == 'NERD'
    wincmd c
    return
  endif

  if number_of_windows_to_this_buffer > 1
    wincmd c
  else
    bdelete
  endif
endfunction

function! GetVisual()
  let reg_save = getreg('"')
  let regtype_save = getregtype('"')
  let cb_save = &clipboard
  set clipboard&
  normal! ""gvy
  let selection = getreg('"')
  call setreg('"', reg_save, regtype_save)
  let &clipboard = cb_save
  return selection
endfunction


