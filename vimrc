" Use Vim settings, rather then Vi settings (much better!).
set nocompatible

if filereadable(expand("~/.vimrc.before.local"))
	source ~/.vimrc.before.local
endif

if filereadable(expand("~/.vimrc.before"))
	source ~/.vimrc.before
endif

if filereadable(expand("~/.vimrc.before.plugins"))
	source ~/.vimrc.before.plugins
endif

" =============== Vundle Initialization ===============
if filereadable(expand("~/.vim/vimrc.plugins"))
	source ~/.vim/vimrc.plugins
endif

if filereadable(expand("~/.vim/plugged/.installed"))
	" ================ General Config ====================

	set number                      "Line numbers are good
	set backspace=indent,eol,start  "Allow backspace in insert mode
	set history=1000                "Store lots of :cmdline history
	set showcmd                     "Show incomplete cmds down the bottom
	set showmode                    "Show current mode down the bottom
	set gcr=a:blinkon0              "Disable cursor blink
	set novisualbell                "No sounds
	set autoread                    "Reload files changed outside vim

	" This makes vim act like all other editors, buffers can
	" exist in the background without being in a window.
	" http://items.sjbach.com/319/configuring-vim-right
	set hidden

	"turn on syntax highlighting
	syntax on

	" Change leader to a comma because the backslash is too far away
	" That means all \x commands turn into ,x
	" The mapleader has to be set before vundle starts loading all
	" the plugins.
	if  !exists("g:mapleader")
		let mapleader=","
		let g:mapleader=","
	endif

	if !exists("g:maplocalleader")
		let maplocalleader = '\'
		let g:maplocalleader = '\'
	endif

	" ================ Turn Off Swap Files ==============

	set noswapfile
	set nobackup
	set nowb

	" ================ Indentation ======================
	set autoindent
	set smartindent
	set smarttab
	set shiftwidth=2
	set softtabstop=2
	set tabstop=2
	set expandtab

	filetype plugin on
	filetype indent on

	" Display tabs and trailing spaces visually
	set nolist
	set listchars=trail:·,precedes:«,extends:»,eol:¶,tab:▸\ 

	set nowrap       "Don't wrap lines

	" ================ Folds ============================

	set foldmethod=indent   "fold based on indent
	set foldnestmax=10      "deepest fold is 3 levels
	set nofoldenable        "dont fold by default
	set foldlevelstart=10
	set foldlevel=10

	" ================ Completion =======================

	set wildmode=list:longest,full
	set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
	set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
	set wildignore+=*vim/tmp/backups*
	set wildignore+=*sass-cache*
	set wildignore+=*DS_Store*
	set wildignore+=vendor/rails/**
	set wildignore+=vendor/cache/**
	set wildignore+=*.gem
	set wildignore+=tags
	set wildignore+=log/**
	set wildignore+=tmp/**
	set wildignore+=*.png,*.jpg,*.gif
	set wildignore+=*.sw?
	set wildignore+=*.bak,*.?~,*.??~,*.???~,*.~
	set wildignore+=*.luac
	set wildignore+=*.jar
	set wildignore+=*.pyc
	set wildignore+=*.stats

	" ================ Scrolling ========================

	set scrolloff=8         "Start scrolling when we're 8 lines away from margins
	set sidescrolloff=15
	set sidescroll=1

	" ================ Misc options =====================

	set expandtab
	set mouse=a
	set title
	set ignorecase                                      " игнорировать регистр при поиске
	set smartcase
	set hlsearch                                        " подсвечивать поиск
	set incsearch                                       " использовать инкрементальный поиск
	set autoindent                                      " indents if previous line was indented
	set smartindent                                     " smart indenting
	set linebreak                                       " перенос по словам, а не по буквам
	set dy=lastline
	set laststatus=2
	set encoding=utf-8                                  " set charset translation encoding
	set termencoding=utf-8                              " set terminal encoding
	set fileencoding=utf-8                              " set save encoding
	set fileencodings=utf8,koi8r,cp1251,cp866           " список предполагаемых кодировок, в порядке предпочтения
	set viminfo='50,<1000,s100,:50,n$HOME/.vim/tmp/viminfo
	set foldcolumn=3
	set t_Co=256
	set t_vb=
	set pastetoggle=<F3>

	set noautochdir
	set tags+=~/.vimtags

	set noshowmode
	set confirm
	set gdefault                                        " Add the g flag to search/replace by default
	set binary
	set noeol                                           " Don’t add empty newlines at the end of files
	set cursorcolumn                                    " Highlight current column
	set cursorline                                      " Highlight current line
	set cursorcolumn                                    " Highlight current column
	set noerrorbells                                    " Disable error bells
	set shortmess=atI                                   " Don’t show the intro message when starting Vim
	set ttimeoutlen=50
	set ssop-=options
	set colorcolumn=120
	if exists('g:tab_mode')
		set switchbuf=usetab,newtab
	else
		set switchbuf=useopen
	endif
	set ttyfast                                          " assume fast terminal connection
	set completeopt-=preview

	let &showbreak='↪ '

	if has('unnamedplus')
		set clipboard=unnamed,unnamedplus
	else
		set clipboard=unnamed
	endif

	" Use relative line numbers
	if exists("g:apperances_numbers")
		set relativenumber
		au BufReadPost * set relativenumber
	endif

	" =================== GUI Settings ========================
	" Disable the scrollbars (NERDTree)
	set guioptions-=r
	set guioptions-=L

	" Disable the macvim toolbar
	set guioptions-=T

	" Disable menu bar
	set guioptions-=m

	" ================ Custom Settings ========================
	for fpath in split(globpath('~/.vim/settings', '*.vim'), '\n')
		exe 'source' fpath
	endfor

	if filereadable(expand("~/.vimrc.local"))
		so ~/.vimrc.local
	endif
endif

