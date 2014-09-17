let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.vim/tmp/slime_paste"
let g:slime_default_config = { "socket_name": "default", "target_pane": "0:1" }
let g:slime_no_mappings = 1

xmap <leader>rs <Plug>SlimeRegionSend
nmap <leader>ms <Plug>SlimeMotionSend
nmap <leader>ls <Plug>SlimeLineSend
