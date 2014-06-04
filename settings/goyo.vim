let g:goyo_width = 120

function! s:GoGoyo()
    execute 'Goyo'
    if exists('#goyo') == 1
      execute 'NERDTreeClose'
      execute 'set ruler'
    else
      execute 'NERDTree'
    end
endfunction

nnoremap <silent> <Leader><Space> :call <SID>GoGoyo()<CR>

