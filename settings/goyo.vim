let g:goyo_width = 120

function! GoGoyo()
    execute 'Goyo'
    if exists('#goyo') == 1
      execute 'NERDTreeClose'
      execute 'set ruler'
    else
			if !argc()
				execute 'NERDTree'
			endif
    end
endfunction

command! GoGoyo :call GoGoyo()
