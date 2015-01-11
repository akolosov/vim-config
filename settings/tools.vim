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
endif

if exists("g:tools_search")
  let g:agprg="/usr/local/bin/ag --column"

  " Open the Ag command and place the cursor into the quotes
  nmap <Leader>ag :Ag ""<Left>
  nmap <Leader>af :AgFile ""<Left>
endif

if exists("g:tools_ctrlp")
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

  let g:ctrlp_dont_split = 'NERD'

  let g:ctrlp_map = '<Leader>,'

  let g:ctrlp_extensions = ['tags', 'changes', 'mark', 'undo', 'tjump', 'modified', 'yankring', 'quickfix', 'menu']
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

  let g:gitgutter_sign_column_always = 1
  " The tree buffer makes it easy to drill down through the directories of your
  " git repository, but it’s not obvious how you could go up a level to the
  " parent directory. Here’s a mapping of .. to the above command, but
  " only for buffers containing a git blob or tree
  autocmd User fugitive
    \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
    \   nnoremap <buffer> .. :edit %:h<CR> |
    \ endif

  " Every time you open a git object using fugitive it creates a new buffer. 
  " This means that your buffer listing can quickly become swamped with 
  " fugitive buffers. This prevents this from becomming an issue:

  autocmd BufReadPost fugitive://* set bufhidden=delete
endif

if exists("g:tools_search")
  "Use the silver searcher for lightning fast Gsearch command
  set grepprg=git\ grep
  let g:grep_cmd_opts = '--line-number'
endif

if exists("g:tools_undotree")
  let g:undotree_WindowLayout = 3
  let g:undotree_SplitWidth = 50
  let g:undotree_DiffpanelHeight = 20
endif

if exists("g:tools_common")
  " Unimpaired configuration
  " Bubble single lines
  nmap <C-Up> [e
  nmap <C-Down> ]e

  " Bubble multiple lines
  vmap <C-Up> [egv
  vmap <C-Down> ]egv
end

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

if exists("g:tools_search")
  " Stolen from Steve Losh vimrc: https://bitbucket.org/sjl/dotfiles/src/tip/vim/.vimrc
  " Open a Quickfix window for the last search.
  nnoremap <silent> <leader>q/ :execute 'vimgrep /'.@/.'/g %'<CR>:copen<CR>

  " Ag for the last search.
  nnoremap <silent> <leader>qa/ :execute "Ag! '" . substitute(substitute(substitute(@/, "\\\\<", "\\\\b", ""), "\\\\>", "\\\\b", ""), "\\\\v", "", "") . "'"<CR>
endif

