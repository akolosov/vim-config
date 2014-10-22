if executable('ag')
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s --files-with-matches -g "" --ignore "\.git$\|\.hg$\|\.svn$"'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
else
  " Fall back to using git ls-files if Ag is not available
  let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
endif

" Default to filename searches - so that appctrl will find application
" controller
let g:ctrlp_by_filename = 1

" Don't jump to already open window. This is annoying if you are maintaining
" several Tab workspaces and want to open two windows into the same file.
let g:ctrlp_switch_buffer = 1

" Additional mapping for buffer search
nnoremap <silent> <Leader>b :CtrlPBuffer<cr>
nnoremap <silent> .. :CtrlPBuffer<cr>

nnoremap <silent> <Space><Space> :CtrlPtjump<CR>
vnoremap <silent> <Space><Space> :CtrlPtjumpVisual<CR>

nnoremap <silent> <C-p> :CtrlPMenu<CR>
vnoremap <silent> <C-p> <C-U>:CtrlPMenu<CR>
inoremap <silent> <C-p> <Esc>:CtrlPMenu<CR>

nnoremap <silent> <C-p><C-t> :CtrlPTag<CR>
vnoremap <silent> <C-p><C-t> <C-U>:CtrlPTag<CR>
inoremap <silent> <C-p><C-t> <Esc>:CtrlPTag<CR>

nnoremap <silent> <C-p><C-y> :CtrlPYankring<CR>
vnoremap <silent> <C-p><C-y> <C-U>:CtrlPYankring<CR>
inoremap <silent> <C-p><C-y> <Esc>:CtrlPYankring<CR>

nnoremap <silent> <C-p><C-z> :CtrlPUndo<CR>
vnoremap <silent> <C-p><C-z> <C-U>:CtrlPUndo<CR>
inoremap <silent> <C-p><C-z> <Esc>:CtrlPUndo<CR>

nnoremap <silent><C-p><C-h> :CtrlPCmdHistory<CR>
vnoremap <silent><C-p><C-h> <C-U>:CtrlPCmdHistory<CR>
inoremap <silent><C-p><C-h> <Esc>:CtrlPCmdHistory<CR>

nnoremap <silent><C-p><C-s> :CtrlPSearchHistory<CR>
vnoremap <silent><C-p><C-s> <C-U>:CtrlPSearchHistory<CR>
inoremap <silent><C-p><C-s> <Esc>:CtrlPSearchHistory<CR>

let g:ctrlp_dont_split = 'NERD'

let g:ctrlp_map = '<Leader>,'

let g:ctrlp_extensions = ['tags', 'changes', 'mark', 'undo', 'tjump', 'modified', 'cmdpalette', 'yankring', 'quickfix', 'menu']
