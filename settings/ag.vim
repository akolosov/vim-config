let g:agprg="/usr/local/bin/ag --column"

" Open the Ag command and place the cursor into the quotes
nmap ,ag :Ag ""<Left>
nmap ,af :AgFile ""<Left>
