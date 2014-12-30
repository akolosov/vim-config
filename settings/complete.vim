if exists("g:use_neocomplete")
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

  if !exists('~/.vim/tmp/neocomplete')
    silent !mkdir ~/.vim/tmp/neocomplete > /dev/null 2>&1
  endif

  let g:neocomplete#data_directory='~/.vim/tmp/neocomplete'
elseif exists("g:use_youcompleteme")
  let g:ycm_min_num_of_chars_for_completion = 3
  let g:ycm_min_num_identifier_candidate_chars = 0
  let g:ycm_auto_trigger = 1
  let g:ycm_filetype_whitelist = { '*': 1 }

  let g:ycm_filetype_blacklist = {
      \ 'ctrlp' : 1,
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'mail' : 1
      \}

  let g:ycm_filetype_specific_completion_to_disable = {
      \ 'gitcommit': 1
      \}

  let g:ycm_show_diagnostics_ui = 0

  let g:ycm_error_symbol = '>>'
  let g:ycm_enable_diagnostic_signs = 1
  let g:ycm_enable_diagnostic_highlighting = 1
  let g:ycm_echo_current_diagnostic = 0
  let g:ycm_always_populate_location_list = 0
  let g:ycm_open_loclist_on_ycm_diags = 0
  let g:ycm_allow_changing_updatetime = 1
  let g:ycm_complete_in_comments = 0
  let g:ycm_collect_identifiers_from_comments_and_strings = 0
  let g:ycm_collect_identifiers_from_tags_files = 0
  let g:ycm_seed_identifiers_with_syntax = 0
  let g:ycm_extra_conf_vim_data = []
  let g:ycm_server_use_vim_stdout = 0
  let g:ycm_path_to_python_interpreter = ''
  let g:ycm_server_log_level = 'info'
  let g:ycm_auto_start_csharp_server = 1
  let g:ycm_auto_stop_csharp_server = 1
  let g:ycm_autoclose_preview_window_after_completion = 1
  let g:ycm_autoclose_preview_window_after_insertion = 1
  let g:ycm_max_diagnostics_to_display = 30
  let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
  let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
  let g:ycm_key_invoke_completion = '<C-Space>'
  let g:ycm_key_detailed_diagnostics = '<leader>yd'
  let g:ycm_filepath_completion_use_working_dir = 0

  let g:ycm_semantic_triggers =  {
    \   'c' : ['->', '.'],
    \   'objc' : ['->', '.'],
    \   'ocaml' : ['.', '#'],
    \   'cpp,objcpp' : ['->', '.', '::'],
    \   'perl' : ['->'],
    \   'php' : ['->', '::'],
    \   'cs,java,javascript,d,python,perl6,scala,vb,elixir,go' : ['.'],
    \   'vim' : ['re![_a-zA-Z]+[_\w]*\.'],
    \   'ruby' : ['.', '::'],
    \   'lua' : ['.', ':'],
    \   'erlang' : [':'],
    \ }

  let g:ycm_cache_omnifunc = 1
  let g:ycm_use_ultisnips_completer = 1
  let g:ycm_goto_buffer_command = 'same-buffer'
  let g:ycm_disable_for_files_larger_than_kb = 1000
endif

if exists("g:use_neocomplete") || exists("g:use_youcompleteme")
  " Enable omni completion.
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType coffeescript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
  autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
  autocmd FileType go setlocal omnifunc=go#complete#Complete
endif

