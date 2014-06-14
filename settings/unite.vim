" Поиск по истории как в yankring/yankstack
let g:unite_source_history_yank_enable = 1

" Автоматический insert mode
let g:unite_enable_start_insert = 1

" Отображаем Unite в нижней части экрана
let g:unite_split_rule = "botright"

" Отключаем замену статус строки
let g:unite_force_overwrite_statusline = 0

" Размер окна Unite
let g:unite_winheight = 10

" Красивые стрелочки
let g:unite_candidate_icon="»"

" Меню
let g:unite_source_menu_menus = {}
let g:unite_source_menu_menus.mainmenu = {
            \     'description' : 'Unite main menu',
            \ }
let g:unite_source_menu_menus.mainmenu.candidates = {
            \   'Show MRU and buffers'   : 'Unite buffer file_mru',
            \   'Show files and dirs'    : 'Unite file',
            \   'Find files by mask'     : 'Unite find',
            \   'Grep in files'          : 'Unite grep',
            \   'Show registers'         : 'Unite register',
            \   'Show clipboard history' : 'Unite history/yank',
            \ }
function g:unite_source_menu_menus.mainmenu.map(key, value)
    return {
            \       'word' : a:key, 'kind' : 'command',
            \       'action__command' : a:value,
            \ }
endfunction

let g:unite_source_history_yank_enable = 1
let g:unite_enable_start_insert = 0
let g:unite_enable_short_source_mes = 0
let g:unite_force_overwrite_statusline = 0
let g:unite_prompt = '>>> '
let g:unite_marked_icon = '✓'
let g:unite_data_directory = $HOME.'/.vim/tmp/unite'
let g:unite_source_buffer_time_format = '(%d.%m.%Y %H:%M:%S) '
let g:unite_source_file_mru_time_format = '(%d.%m.%Y %H:%M:%S) '
let g:unite_source_directory_mru_time_format = '(%d.%m.%Y %H:%M:%S) '

if executable('ag')
    let g:unite_source_grep_command='ag'
    let g:unite_source_grep_default_opts='--nocolor --nogroup -a -S'
    let g:unite_source_grep_recursive_opt=''
    let g:unite_source_grep_search_word_highlight = 1
elseif executable('ack')
    let g:unite_source_grep_command='ack'
    let g:unite_source_grep_default_opts='--no-group --no-color'
    let g:unite_source_grep_recursive_opt=''
    let g:unite_source_grep_search_word_highlight = 1
endif
