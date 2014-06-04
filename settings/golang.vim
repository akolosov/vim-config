let g:golang_root = expand("~/.go")

autocmd FileType go compiler golang

au BufRead,BufNewFile *.go set filetype=go
