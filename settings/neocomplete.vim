" neocomplete
" Next generation completion framework.

let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1

" Default # of completions is 100, that's crazy.
let g:neocomplete#max_list = 10

" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" This makes sure we use neocomplete completefunc instead of
" the one in rails.vim, otherwise this plugin will crap out.
" let g:neocomplete#force_overwrite_completefunc = 1

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

let g:neocomplete#enable_auto_select = 0
let g:neocomplete#enable_cursor_hold_i = 1
let g:neocomplete#enable_insert_char_pre = 1

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
noremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-Up>  neocomplete#close_popup()
inoremap <expr><C-Left>  neocomplete#cancel_popup()

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType coffeescript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType go setlocal omnifunc=gocomplete#Complete

if !exists('~/.vim/tmp/neocomplete')
  silent !mkdir ~/.vim/tmp/neocomplete > /dev/null 2>&1
endif

let g:neocomplete#data_directory='~/.vim/tmp/neocomplete'
