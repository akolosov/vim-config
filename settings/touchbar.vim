if has("gui_macvim")
    if exists('g:tab_mode')
	anoremenu <silent> icon=NSTouchBarGoBackTemplate TouchBar.PrevTab gt
	anoremenu <silent> icon=NSTouchBarGoForwardTemplate TouchBar.NextTab gT
    else
	anoremenu <silent> icon=NSTouchBarGoBackTemplate TouchBar.PrevTab :bp<CR>
	anoremenu <silent> icon=NSTouchBarGoForwardTemplate TouchBar.NextTab :bn<CR>
    endif
    if exists('g:tab_mode')
	anoremenu icon=NSTouchBarComposeTemplate TouchBar.NewFile :tabe<SPACE>
    else
	anoremenu icon=NSTouchBarComposeTemplate TouchBar.NewFile :e<SPACE>
    endif
    if exists('g:tools_nerdtree')
	anoremenu <silent> icon=NSTouchBarSidebarTemplate TouchBar.ShowSidebar :NERDTreeToggle<CR>
    endif
    if exists('g:tools_undotree')
	anoremenu <silent> icon=NSTouchBarHistoryTemplate TouchBar.ShowHistory :UndotreeToggle<CR>
    endif
    if exists('g:tools_tagbar')
	anoremenu <silent> icon=NSTouchBarTagIconTemplate TouchBar.ShowTags :TagbarToggle<CR>
    endif
    if exists('g:tools_git')
	anoremenu <silent> icon=NSTouchBarGetInfoTemplate TouchBar.ShowGitStatus :Gstatus<CR>
    endif
    if exists('g:tools_search_flygrep')
	anoremenu <silent> icon=NSTouchBarSearchTemplate TouchBar.ShowSearch :FlyGrep<CR>
    endif
endif