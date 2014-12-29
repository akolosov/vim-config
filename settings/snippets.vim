if exists("g:use_neocomplete") 
  " Enable snipMate compatibility feature.
  let g:neosnippet#enable_snipmate_compatibility = 1

  let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets,~/.vim/snippets'

  " Plugin key-mappings.
  imap <C-@>     <Plug>(neosnippet_expand_or_jump)
  smap <C-@>     <Plug>(neosnippet_expand_or_jump)
  xmap <C-@>     <Plug>(neosnippet_expand_target)

  " SuperTab like snippets behavior.
  imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  \ "\<Plug>(neosnippet_expand_or_jump)"
  \: pumvisible() ? "\<C-n>" : "\<TAB>"
  smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  \ "\<Plug>(neosnippet_expand_or_jump)"
  \: "\<TAB>"

  " For snippet_complete marker.
  if has('conceal')
    set conceallevel=2 concealcursor=i
  endif
elseif exists("g:use_youcompleteme")
  " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe
  let g:UltiSnipsExpandTrigger="<tab>"
  let g:UltiSnipsJumpForwardTrigger="<c-right>"
  let g:UltiSnipsJumpBackwardTrigger="<c-left>"
  let g:UltiSnipsListSnippets="<c-l>"

  " If you want :UltiSnipsEdit to split your window.
  let g:UltiSnipsEditSplit="vertical"
endif