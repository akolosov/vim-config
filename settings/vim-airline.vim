let g:airline#extensions#tabline#enabled = 1

if !exists('airline_powerline_fonts') && !has("gui_running")
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
endif

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
    \ '' : '^Ω',
    \ }

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇ '
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.readonly = '⭤'

let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#whitespace#trailing_format = 'τ[%s]'
let g:airline#extensions#whitespace#mixed_indent_format = 'μ[%s]'

let g:airline#extensions#nrrwrgn#enabled = 1
let g:airline#extensions#ctrlp#show_adjacent_modes = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#bufferline#overwrite_variables = 1

let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#show_buffers = 1

let g:airline#extensions#quickfix#quickfix_text = 'Quickfix'
let g:airline#extensions#quickfix#location_text = 'Location'

let g:airline_exclude_preview = 1
