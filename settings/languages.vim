if exists("g:languages_common")
  "mark syntax errors with :signs
  let g:syntastic_enable_signs=1
  "automatically jump to the error when saving the file
  let g:syntastic_auto_jump=1
  "show the error list automatically
  let g:syntastic_auto_loc_list=1
  "don't care about warnings
  let g:syntastic_quiet_messages = {'level': 'warnings'}

  let g:syntastic_error_symbol = '✠'
  let g:syntastic_style_error_symbol = '✠'
  let g:syntastic_warning_symbol = '≈'
  let g:syntastic_style_warning_symbol = '≈'
endif

if exists("g:languages_textobjects")
  " via: http://whynotwiki.com/Vim
  " Ruby
  " Use v or # to get a variable interpolation (inside of a string)}
  " ysiw#   Wrap the token under the cursor in #{}
  " v...s#  Wrap the selection in #{}
  let g:surround_113 = "#{\r}"   " v
  let g:surround_35  = "#{\r}"   " #

  " Select text in an ERb file with visual mode and then press s- or s=
  " Or yss- to do entire line.
  let g:surround_45 = "<% \r %>"    " -
  let g:surround_61 = "<%= \r %>"   " =

  " Navigate to the block surrounding this one
  " For example if you're inside
  " foo do
  "    bar do
  "      # you are here
  "    end
  " end
  "
  " Then hitting ,orb ("outer ruby block") will take you to 'foo do'
  "
  " This is relying on the textobj-rubyblock which gives us 'ar' around ruby
  " and matchit.vim which gives us jumping to the matching 
  nnoremap <silent> <Leader>orb :normal varar%<esc><esc>
endif

if exists("g:languages_ruby")
  " Better key maps for switching between controller and view
  nnoremap <Leader>gvv :Rview<cr>
  nnoremap <Leader>gcc :Rcontroller<cr>
endif

if exists("g:languages_ruby")
  " Does not work on pending 'blocks', only single lines
  "
  " Given:
  " it "foo bar" do
  "   pending("bla bla"
  "
  " Produce:
  " xit "foo bar" do
  "
  function! ChangePendingRspecToXit()
    " Find the next occurrence of pending
    while(search("pending(") > 0)
      " Delete it
      normal dd
      " Search backwards to the it block
      ?it\s
      " add an 'x' to the 'it' to make it 'xit'
      normal ix
    endwhile
  endfunction

  nnoremap <silent> <Leader>rxit :call ChangePendingRspecToXit()<cr>

  " insert a before { } block around a line
  nnoremap <silent> \bf ^ibefore { <esc>$a }
endif

if exists("g:languages_go")
  let g:go_disable_autoinstall = 1
  let g:go_bin_path = expand("~/.go/bin")
  let g:go_fmt_autosave = 0

  if exists("g:use_neocomplete")
    let g:go_snippet_engine = "neosnippet"
  elseif exists("g:use_youcompleteme")
    let g:go_snippet_engine = "ultisnips"
  endif

  let g:go_highlight_functions = 1
  let g:go_highlight_methods = 1
  let g:go_highlight_structs = 1
  let g:go_fmt_command = "goimports"

  " Show a list of interfaces which is implemented by the type under your cursor
  au FileType go nmap <Leader>s <Plug>(go-implements)

  " Show type info for the word under your cursor with <leader>i (useful if you have disabled auto 
  " showing type info via g:go_auto_type_info)
  au FileType go nmap <Leader>i <Plug>(go-info)

  " Open the relevant Godoc for the word under the cursor with <leader>gd or open it vertically with <leader>gv
  au FileType go nmap <Leader>gd <Plug>(go-doc)
  au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

  " Or open the Godoc in browser
  au FileType go nmap <Leader>gb <Plug>(go-doc-browser)

  " Run commands, such as go run with <leader>r for the current file or go build and go test for the 
  " current package with <leader>b and <leader>t. Display a beautiful annotated source code to see which functions are covered with <leader>c.
  au FileType go nmap <leader>r <Plug>(go-run)
  au FileType go nmap <leader>b <Plug>(go-build)
  au FileType go nmap <leader>t <Plug>(go-test)
  au FileType go nmap <leader>c <Plug>(go-coverage)

  " By default the mapping gd is enabled which opens the target identifier in current buffer. You can also 
  " open the definition/declaration in a new vertical, horizontal or tab for the word under your cursor:
  au FileType go nmap <Leader>ds <Plug>(go-def-split)
  au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
  au FileType go nmap <Leader>dt <Plug>(go-def-tab)

  " Rename the identifier under the cursor to a new name
  au FileType go nmap <Leader>e <Plug>(go-renameau FileType go nmap <Leader>s <Plug>(go-implements)

  au BufRead,BufNewFile Gomfile setlocal ft=gomfile syntax=ruby
endif

if exists("g:languages_markdown")
  " Support for github flavored markdown
  " via https://github.com/jtratner/vim-flavored-markdown
  augroup markdown
      au!
      au BufNewFile,BufRead *.md,*.markdown setlocal filetype=markdown
  augroup END
endif

if exists("g:languages_javascript")
  autocmd BufRead,BufNewFile *.js set ft=javascript syntax=jquery
endif
