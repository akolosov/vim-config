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

function! BundleExists(section, bundle)
  return (index(g:use_bundles[section], bundle) >= 0)
endfunction

function! AddBundle(section, bundle)
  call add(g:use_bundles[section], bundle)
endfunction

function! RemovBundle(section, bundle)
  call remove(g:use_bundles[section], index(g:use_bundles[section], bundle))
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" OpenChangedFiles COMMAND
" Open a split for each dirty file in git
"
" Shamelessly stolen from Gary Bernhardt: https://github.com/garybernhardt/dotfiles
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! OpenChangedFiles()
  let status = system('git status -s | grep "^ \?\(M\|A\)" | cut -d " " -f 3')
  let filenames = split(status, "\n")
  if len(filenames) > 0
    exec "e " . filenames[0]
    for filename in filenames[1:]
      if filename != ''
        if exists('g:tab_mode')
          exec "tabe " . filename
        else
          exec "e " . filename
        endif
      endif
    endfor
  end
endfunction
command! OpenChangedFiles :call OpenChangedFiles()


