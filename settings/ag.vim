let g:agprg="/usr/local/bin/ag --column"

" Open the Ag command and place the cursor into the quotes
nmap <Leader>ag :Ag ""<Left>
nmap <Leader>af :AgFile ""<Left>
