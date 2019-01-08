if exists("g:tools_nerdtree")
  " Auto open nerd tree on startup
  if (!argc() || isdirectory(argv(0))) && !exists("s:std_in") && (!exists("g:dont_show_nerd_tree"))
    let g:nerdtree_tabs_open_on_gui_startup = 1
    let g:nerdtree_tabs_open_on_console_startup = 1
  else
    let g:nerdtree_tabs_open_on_gui_startup = 0
    let g:nerdtree_tabs_open_on_console_startup = 0
  endif

  " Focus in the main content window
  let g:nerdtree_tabs_focus_on_files = 1

  autocmd BufRead,BufWinEnter,WinEnter,BufEnter NERD_tree_\d\+ setlocal nolist

  " Make nerdtree look nice
  let NERDTreeMinimalUI = 1
  let NERDTreeDirArrows = 1
  let g:NERDTreeWinSize = 30
  let NERDTreeIgnore=['tags']

  let g:NERDTreeIndicatorMapCustom = {
      \ "Modified"  : "✹",
      \ "Staged"    : "✚",
      \ "Untracked" : "✭",
      \ "Renamed"   : "➜",
      \ "Unmerged"  : "═",
      \ "Deleted"   : "✖",
      \ "Dirty"     : "✗",
      \ "Clean"     : "✔︎",
      \ 'Ignored'   : '☒',
      \ "Unknown"   : "?"
      \ }
endif

if exists("g:tools_search")
  let g:ag_prg="/usr/local/bin/ag --column"
endif

if exists("g:tools_ctrlp")
  if executable('ag')
    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = '/usr/local/bin/ag %s --files-with-matches -g "" --ignore "\.git$\|\.hg$\|\.svn$"'

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

  let g:ctrlp_dont_split = 'NERD'

  let g:ctrlp_map = '<Leader>,'

  let g:ctrlp_cmdpalette_execute = 1

  let g:ctrlp_extensions = ['tags', 'changes', 'mark', 'undo', 'tjump', 'modified', 'yankring', 'quickfix', 'menu', 'cmdpalette']
endif

if exists("g:tools_easytags")
  if !argc()
    let g:easytags_events = ['BufWritePost']
    let g:easytags_async = 1
  else
    let g:easytags_events = []
    let g:easytags_async = 0
  endif

  let g:easytags_file = '~/.vim/tmp/tags'
  let g:easytags_auto_highlight = 0
  let g:easytags_always_enabled = 0
  let g:easytags_on_cursorhold = 0
  let g:easytags_syntax_keyword = 'auto'
  let g:easytags_dynamic_files = 2
  let g:easytags_autorecurse = 1
  let g:easytags_cmd = '/usr/local/bin/ctags'
  let g:easytags_python_enabled = 0
endif

if exists("g:tools_git")
  nnoremap <silent> <Leader>dg :diffget<CR>
  nnoremap <silent> <Leader>dp :diffput<CR>

  set signcolumn=yes
  " The tree buffer makes it easy to drill down through the directories of your
  " git repository, but it’s not obvious how you could go up a level to the
  " parent directory. Here’s a mapping of .. to the above command, but
  " only for buffers containing a git blob or tree
  autocmd User fugitive
        \ if get(b:, 'fugitive_type', '') =~# '^\%(tree\|blob\)$' |
        \   nnoremap <buffer> .. :edit %:h<CR> |
        \ endif

  " Every time you open a git object using fugitive it creates a new buffer. 
  " This means that your buffer listing can quickly become swamped with 
  " fugitive buffers. This prevents this from becomming an issue:

  autocmd BufReadPost fugitive://* set bufhidden=delete
endif

if exists("g:tools_undotree")
  let g:undotree_WindowLayout = 3
  let g:undotree_SplitWidth = 50
  let g:undotree_DiffpanelHeight = 20
  let g:undotree_SetFocusWhenToggle = 1
endif

if exists("g:tools_common")
  " Unimpaired configuration
  " Bubble single lines
  nmap <C-Up> [e
  nmap <C-Down> ]e

  " Bubble multiple lines
  vmap <C-Up> [egv
  vmap <C-Down> ]egv

  let g:lastplace_ignore = "gitcommit,svn"

  " Close Quickfix and LocList by Q
  autocmd BufWinEnter quickfix nnoremap <silent> <buffer>
        \   q :cclose<cr>:lclose<cr>

  autocmd BufEnter * if (winnr('$') == 1 && &buftype ==# 'quickfix' ) |
        \   bd|
        \   q | endif

  " toggles the quickfix window.
  command -bang -nargs=? QFix call QFixToggle(<bang>1)
  function! QFixToggle(forced)
    if exists("g:qfix_win") || a:forced == 0
      cclose
    else
      execute "copen " . g:quickfix_win_height
    endif
  endfunction
  " used to track the quickfix window
  augroup QFixToggle
    autocmd!
    autocmd BufWinEnter quickfix let g:qfix_win = bufnr("$")
    autocmd BufWinLeave * if exists("g:qfix_win") && expand("<abuf>") == g:qfix_win | unlet! g:qfix_win | endif
  augroup END

  let g:quickfix_win_height = 10

  " toggles the loclist window.
  command -bang -nargs=? LList call LListToggle(<bang>1)
  function! LListToggle(forced)
    if exists("g:llist_win") || a:forced == 0
      lclose
    else
      execute "lopen " . g:loclist_win_height
    endif
  endfunction
  " used to track the loclist window
  augroup LListToggle
    autocmd!
    autocmd BufWinEnter quickfix let g:llist_win = bufnr("$")
    autocmd BufWinLeave * if exists("g:llist_win") && expand("<abuf>") == g:llist_win | unlet! g:llist_win | endif
  augroup END

  let g:loclist_win_height = 10
end

if exists("g:tools_quickfix")
  let g:qf_loclist_window_bottom=0
endif

if exists("g:tools_multicursors")
  " Turn off default key mappings
  let g:multi_cursor_use_default_mapping=0

  " Switch to multicursor mode with ,mc
  let g:multi_cursor_start_key='<Leader>mc'

  " Ctrl-n, Ctrl-p, Ctrl-x, and <Esc> are mapped in the special multicursor
  " mode once you've added at least one virtual cursor to the buffer
  let g:multi_cursor_next_key='<C-n>'
  let g:multi_cursor_prev_key='<C-p>'
  let g:multi_cursor_skip_key='<C-x>'
  let g:multi_cursor_quit_key='<Esc>'
endif

if exists("g:tools_session")
  " Prevent vim-session from asking us to load the session.
  " If you want to load the session, use :SaveSession and :OpenSession
  let g:session_autosave = 'no'
  let g:session_autoload = 'no'

  if !exists('~/.vim/tmp/sessions')
    silent !mkdir ~/.vim/tmp/sessions > /dev/null 2>&1
  endif

  let g:session_directory='~/.vim/tmp/sessions'
endif

if exists("g:tools_undotree")
  " Keep undo history across sessions, by storing in file.
  " Only works all the time.
  if has('persistent_undo') && v:version > '702'
    silent !mkdir ~/.vim/tmp/backups > /dev/null 2>&1
    set undodir=~/.vim/tmp/backups
    set undofile
  endif
endif

if exists("g:tools_bookmarks")
  let g:bookmark_auto_save_file = expand("~/.vim/tmp/bookmarks")
  let g:bookmark_auto_close = 1
endif

