"Key for running smartpaigf with all filters (ft/comments/def)
"default is 'gf'
let g:smartgf_key = 'gf'

"Key for running smartpaigf without filters
"default is 'gF'
let g:smartgf_no_filter_key = 'gF'

"Enable search with ruby gems from Gemfile
"default is 1
let g:smartgf_enable_gems_search = 1

"Enable auto-refreshing ctags file on window focus (works only with GUI)
"default is 1
let g:smartgf_auto_refresh_ctags = 1

"Max entries count to display (search results dialog)
"default is 9
let g:smartgf_max_entries_per_page = 9

"Min space between text and file path in the search results list
"default is 5
let g:smartgf_divider_width = 5

"Extensions to try for filenames which leave it off (will be tried in order)
" Default is as below
let g:smartgf_extensions = ['.ls', '.coffee', '.js']