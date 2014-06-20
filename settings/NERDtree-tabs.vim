" Auto open nerd tree on startup
if !argc() || isdirectory(argv(0))
  let g:nerdtree_tabs_open_on_gui_startup = 1
  let g:nerdtree_tabs_open_on_console_startup=1
endif

" Focus in the main content window
let g:nerdtree_tabs_focus_on_files = 1
