" Open the Ag command and place the cursor into the quotes
nmap ,ag :Ag ""<Left>
nmap ,af :AgFile ""<Left>

noremap <F7>   :Ag input("Word to search:")
noremap <S-F7> :Ag <cword><CR>
noremap <C-F7> :AgFile input("Filename to search:")
