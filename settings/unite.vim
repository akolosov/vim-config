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
            \   'Show MRU&Buffers' : 'Unite buffer file_mru',
            \   'Show Files'       : 'Unite file',
            \   'Find files'       : 'Unite find',
            \   'Grep in files'    : 'Unite grep',
            \   'Show Registers'   : 'Unite register',
            \   'Show Bookmarks'   : 'Unite bookmark',
            \   'Show Output'      : 'Unite output',
            \ }
function g:unite_source_menu_menus.mainmenu.map(key, value)
    return {
            \       'word' : a:key, 'kind' : 'command',
            \       'action__command' : a:value,
            \ }
endfunction
