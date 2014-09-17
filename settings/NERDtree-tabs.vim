if !exists("g:dont_use_NERDTree")
	" Auto open nerd tree on startup
	if (!argc() || isdirectory(argv(0))) && (!exists("g:dont_show_NERDTree"))
		let g:nerdtree_tabs_open_on_gui_startup = 1
		let g:nerdtree_tabs_open_on_console_startup = 1
	else
		let g:nerdtree_tabs_open_on_gui_startup = 0
		let g:nerdtree_tabs_open_on_console_startup = 0
	endif

	" Focus in the main content window
	let g:nerdtree_tabs_focus_on_files = 1
endif
