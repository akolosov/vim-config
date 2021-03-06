if exists("g:apperances_indentline") 
  let g:indentLine_char = '¦'
  let g:indentLine_color_term = 239
  let g:indentLine_color_gui = '#555555'
endif

if exists("g:apperances_lightline")
  let g:lightline = {
        \ 'colorscheme': 'hybrid',
        \ 'active': {
        \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ], ['ctrlpmark'] ],
        \   'right': [ [ 'syntastic', 'lineinfo' ], ['percent'], [ 'fileformat', 'fileencoding', 'filetype' ] ]
        \ },
        \ 'component_function': {
        \   'fugitive': 'MyFugitive',
        \   'filename': 'MyFilename',
        \   'fileformat': 'MyFileformat',
        \   'filetype': 'MyFiletype',
        \   'fileencoding': 'MyFileencoding',
        \   'mode': 'MyMode',
        \   'ctrlpmark': 'CtrlPMark',
        \ },
        \ 'component_expand': {
        \   'syntastic': 'SyntasticStatuslineFlag',
        \ },
        \ 'component_type': {
        \   'syntastic': 'error',
        \ },
        \ 'subseparator': { 'left': '|', 'right': '|' }
        \ }


  if exists('g:new_mode_indicators')
    let g:lightline.mode_map = {
        \ '__' : '-',
        \ 'n'  : 'η',
        \ 'i'  : 'λ',
        \ 'R'  : 'γ',
        \ 'c'  : 'π',
        \ 'v'  : 'ψ',
        \ 'V'  : 'Ψ',
        \ '' : '^Ψ',
        \ 's'  : 'ω',
        \ 'S'  : 'Ω',
        \ '' : '^Ω' }
  endif

  function! MyModified()
    return &ft =~ 'help' ? '' : &modified ? '+' : &modifiable ? '' : '-'
  endfunction

  function! MyReadonly()
    return &ft !~? 'help' && &readonly ? '⭤' : ''
  endfunction

  function! MyFilename()
    let fname = expand('%:t')
    return fname == 'ControlP' ? g:lightline.ctrlp_item :
          \ fname == '__Tagbar__' ? g:lightline.fname :
          \ fname == '__CS__' ? '' :
          \ fname =~ 'undotree' ? '' :
          \ fname =~ 'diffpanel' ? '' :
          \ fname =~ '__Gundo\|NERD_tree' ? '' :
          \ &ft == 'vimfiler' ? vimfiler#get_status_string() :
          \ &ft == 'unite' ? unite#get_status_string() :
          \ &ft == 'vimshell' ? vimshell#get_status_string() :
          \ ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
          \ ('' != fname ? fname : '[No Name]') .
          \ ('' != MyModified() ? ' ' . MyModified() : '')
  endfunction

  function! MyFugitive()
    try
      if expand('%:t') !~? 'Tagbar\|Gundo\|NERD' && &ft !~? 'vimfiler' && exists('*fugitive#head')
        let mark = '⎇ '  " edit here for cool mark
        let _ = fugitive#head()
        return strlen(_) ? mark._ : ''
      endif
    catch
    endtry
    return ''
  endfunction

  function! MyFileformat()
    return winwidth(0) > 70 ? &fileformat : ''
  endfunction

  function! MyFiletype()
    return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
  endfunction

  function! MyFileencoding()
    return winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
  endfunction

  function! MyMode()
    let fname = expand('%:t')
    return fname == '__Tagbar__' ? 'Tagbar' :
          \ fname == 'ControlP' ? 'CtrlP' :
          \ fname == '__Gundo__' ? 'Gundo' :
          \ fname == '__Gundo_Preview__' ? 'Gundo Preview' :
          \ fname == '__CS__' ? 'CtrlSpace' :
          \ fname =~ 'undotree' ? 'Undo Tree' :
          \ fname =~ 'diffpanel' ? 'Diff Panel' :
          \ fname =~ 'NERD_tree' ? 'NERDTree' :
          \ &ft == 'unite' ? 'Unite' :
          \ &ft == 'vimfiler' ? 'VimFiler' :
          \ &ft == 'vimshell' ? 'VimShell' :
          \ winwidth(0) > 60 ? lightline#mode() : ''
  endfunction

  function! CtrlPMark()
    if expand('%:t') =~ 'ControlP'
      call lightline#link('iR'[g:lightline.ctrlp_regex])
      return lightline#concatenate([g:lightline.ctrlp_prev, g:lightline.ctrlp_item
            \ , g:lightline.ctrlp_next], 0)
    else
      return ''
    endif
  endfunction

  let g:ctrlp_status_func = {
        \ 'main': 'CtrlPStatusFunc_1',
        \ 'prog': 'CtrlPStatusFunc_2',
        \ }

  function! CtrlPStatusFunc_1(focus, byfname, regex, prev, item, next, marked)
    let g:lightline.ctrlp_regex = a:regex
    let g:lightline.ctrlp_prev = a:prev
    let g:lightline.ctrlp_item = a:item
    let g:lightline.ctrlp_next = a:next
    return lightline#statusline(0)
  endfunction

  function! CtrlPStatusFunc_2(str)
    return lightline#statusline(0)
  endfunction

  let g:tagbar_status_func = 'TagbarStatusFunc'

  function! TagbarStatusFunc(current, sort, fname, ...) abort
    let g:lightline.fname = a:fname
    return lightline#statusline(0)
  endfunction

  augroup AutoSyntastic
    autocmd!
    autocmd BufWritePost *.c,*.cpp call s:syntastic()
  augroup END

  function! s:syntastic()
    SyntasticCheck
    call lightline#update()
  endfunction

  let g:unite_force_overwrite_statusline = 0
  let g:vimfiler_force_overwrite_statusline = 0
  let g:vimshell_force_overwrite_statusline = 0
endif

if exists("g:apperances_airline")
  if !exists('g:use_powerline_fonts')
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
  else
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
  endif

  if exists('g:new_mode_indicators')
    let g:airline_mode_map = {
        \ '__' : '-',
        \ 'n'  : 'η',
        \ 'i'  : 'λ',
        \ 'R'  : 'γ',
        \ 'c'  : 'π',
        \ 'v'  : 'ψ',
        \ 'V'  : 'Ψ',
        \ '' : '^Ψ',
        \ 's'  : 'ω',
        \ 'S'  : 'Ω',
        \ '' : '^Ω' }
  endif

  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  let g:airline_symbols.crypt = '∞'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.branch = '⎇ '
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.whitespace = 'Ξ'
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.maxlinenr = '↓'
  let g:airline_symbols.spell = '√'
  let g:airline_symbols.notexists = 'Ø'

  let g:airline#extensions#whitespace#enabled = 1
  let g:airline#extensions#whitespace#trailing_format = 'τ[%s]'
  let g:airline#extensions#whitespace#mixed_indent_format = 'μ[%s]'

  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#nrrwrgn#enabled = 1
  let g:airline#extensions#ctrlp#show_adjacent_modes = 1
  let g:airline#extensions#syntastic#enabled = 1
  let g:airline#extensions#tagbar#enabled = 1
  let g:airline#extensions#ycm#enabled = 1

  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#show_tab_type = 0
  let g:airline#extensions#tabline#close_symbol = '×'
  let g:airline#extensions#tabline#show_close_button = 1
  let g:airline#extensions#tabline#exclude_preview = 1
  let g:airline#extensions#tabline#formatter = 'unique_tail'
  let g:airline#extensions#tabline#fnamemod = ':p:.'
  let g:airline#extensions#tabline#fnamecollapse = 1

  if exists('g:tab_mode')
    let g:airline#extensions#tabline#show_tabs = 1
    let g:airline#extensions#tabline#show_buffers = 0
    let g:airline#extensions#tabline#show_tab_nr = 1
    let g:airline#extensions#tabline#tab_nr_type = 2
    let g:airline#extensions#bufferline#enabled = 0
    autocmd BufDelete * call airline#extensions#tabline#buflist#invalidate()
  else
    let g:airline#extensions#tabline#show_tabs = 0
    let g:airline#extensions#tabline#show_buffers = 1
    let g:airline#extensions#tabline#buffer_nr_show = 1
    let g:airline#extensions#bufferline#enabled = 1
    let g:airline#extensions#bufferline#overwrite_variables = 1
  endif

  let g:airline#extensions#quickfix#quickfix_text = 'Quickfix'
  let g:airline#extensions#quickfix#location_text = 'Location'

  let g:airline_skip_empty_sections = 1
  let g:airline_exclude_preview = 1
endif

if exists("g:apperances_numbers")
  let g:numbers_exclude = [ 'tagbar', 'gundo', 'minibufexpl', 'nerdtree', 'unite', 'vimfiler', 'tagbar', 'startify', 'gundo', 'vimshell', 'w3m' ]
endif
