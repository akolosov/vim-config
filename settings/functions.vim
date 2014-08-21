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
function! QReplace(what)
    let s:word = input("Replace '" . a:what . "' with:")
    :execute '%s/\<' . a:what . '\>/' . s:word . '/gce'
    :unlet! s:word
endfunction

command! QReplace call QReplace(<q-args>)

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

function! CloseWindowOrKillBuffer()
	if &modified
		echohl ErrorMsg
		echomsg "Save before close!"
		echohl NONE
	else
		if matchstr(expand("%"), 'NERD') != 'NERD'
			let s:number_of_windows_to_this_buffer = len(filter(range(1, winnr('$')), "winbufnr(v:val) == bufnr('%')"))
			let s:total_nr_buffers = len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))

			if s:number_of_windows_to_this_buffer > 1
				wincmd c
			else
				if s:total_nr_buffers == 1
					bdelete
				else
					bprevious
					bdelete #
				endif
			endif
		endif
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

function! EnsureExists(path)
	if !isdirectory(expand(a:path))
		call mkdir(expand(a:path))
	endif
endfunction

function! GetRunningOS()
  if has("win32")
    return "win"
  endif
  if has("unix")
    if system('uname')=~'Darwin'
      return "mac"
		else
      return "linux"
    endif
  endif
endfunction

