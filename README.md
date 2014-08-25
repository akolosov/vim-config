vim-config
==========

To install just run in terminal:

```bash

    curl https://raw.githubusercontent.com/akolosov/vim-config/master/scripts/bootstrap.sh -L -o - | sh
```

... wait until successfully installed and have fun with VIM!

Inspired by [spf13-vim](http://vim.spf13.com/) and [YADR](http://skwp.github.io/dotfiles/) - thanks guys!

Variables
=========

`g:use_lightline` - Use LightLine instead AirLine

`g:airline_powerline_fonts` - Use PowerLine fonts ([Link](https://github.com/Lokaltog/powerline-fonts))

Shortcuts
=========

`CTRL-A` - Select all text

`CTRL-D` - Show/Hide NERDTree

`CTRL-E` - Create new tab

`CTRL-Z` - Show/Hide UndoTree

`CTRL-T` - Show/Hide TagBar

`CTRL-J` - Show bookmarks

`CTRL-Y` - Delete line

`CTRL-W` - Delete word

`CTRL-K` - Delete to EOL

`CTRL-L` - Run VimShell

`CTRL-X` or `SHIFT-Del` - Cut

`CTRL-C` or `CTRL-Ins` - Copy

`CTRL-V` or `SHIFT-Ins` - Paste

`CTRL-/` - Comment/Uncomment block

`CTRL-\` - Show/Hide YankRing

`CTRL-Space` - Open CtrlSpace buffers

`F2` - Save file

`CTRL-F2` - Save all files

`SHIFT-F2` or `CTRL-S` - Save file as...

`F3` - Toggle paste mode

`F4` - Toggle readonly mode

`F5` - Open the selected region in a new narrowed window

`F8` - Switch all buffers to tabs

`SHIFT-F8` - Switch all buffers to windows

`F10` - Quit without saving

`SHIFT-F10` - Quit with saving all files

`ESC-ESC` - Quit and ask for save files or close current window/buffer

`//` - No highlights search

`CTRL-]` - Switch next tab

`CTRL-]` - Switch prev tab

`]` - Switch next buffer

`]` - Switch prev buffer

`ALT-k` - Upcase word under cursor

`ALT-j` - Downcase word under cursor

`,o` - Open CtrlP

`,b` - Open CtrlP buffers

`,w` - Save current file

`,.` - Go to last edit location

`,cd` - Set working directory to current opened file's directory

`,ee` - Opens an edit command with the path of the currently edited file filled in

`,te` - Opens a tab edit command with the path of the currently edited file filled in

`,qc` - Toggle Quickfix window

`,qo` - Open  Quickfix window back up

`,gf` - Open file with filename under cursor, create new if not exists

`,gfw` - Open file in windows with filename under cursor, create new if not exists

`,gft` - Open file in tab with filename under cursor, create new if not exists

`,hh` - Split window horizontaly

`,vv` - Split window verticaly

`,#` - Surround a word with #{ruby interpolation}

`,"` - Surround a word with "quotes"

`,'` - Surround a word with 'single quotes'

`,(` or `,)` - Surround a word with (parens)

`,[` or `,]` - Surround a word with [brackets]

`,{` or `,}` - Surround a word with {braces}

`,rw` - Overwrite word, replace a word with what's in the yank buffer

`,sw` - Swaps word under cursor and next word in line

`,ss` - Strip trailing whitespace

`,st` - Make selected text Stringify()

`,sp` - Split line by tags/keywords (using SplitJoin.vim)

`,sj` - Join lines by tags/keywords (using SplitJoin.vim)

`,sf` - Search word under cursor or selected word entire files in current directory (recursively)

`,sr` - Search word under cursor and replace with user inputs

`,s[` - Select inside [] include brackets

`,s]` - Select inside []

`,s{` - Select inside {} include brackets

`,s}` - Select inside {}

`,s(` - Select inside () include brackets

`,s)` - Select inside ()

`,s<` - Select inside \<> include brackets

`,s>` - Select inside \<>

`,s"` - Select inside "

`,s'` - Select inside '

`,gs` - git status

`,gd` - git diff

`,gc` - git commit

`,gl` - git pull

`,gp` - git push

`,gpa` - git push --all

`,ga` - git add %currentfile%

`,gaa` - git add all untracked files

`,gad` - git add user input files

`,gb` - git blame

`,gr` - git remove %currentfile%

`,ag` - Search in files, using ag

`,af` - Search file, using ag

`,ocf` - Open changed files (by git status)

`,orb` - Select Outer-Ruby-Block

`,t=` - Align assignments (don't count logic, like == or !=)

`,t,` - Align on commas

`,t|` - Align on vertical bars (|)

`,tsp` - Align on whitespace

`,z` - Toggle Goyo-mode

`'` - Toggle single quotes to double quotes and backwards

`mm` - Toggle bookmark

`mi` - Annotate bookmark

`ma` - Show all bookmarks

`mj` - Go to next bookmark

`mk` - Go to prev bookmark

`mc` - Clear bookmarks

`mx` - Clear all bookmarks
