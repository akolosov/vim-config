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

`CTRL-A` **\[n i v]** - Select all text

`CTRL-D` **\[n i v]** - Show/Hide NERDTree

`CTRL-E` **\[n i v]** - Create new tab

`CTRL-Z` **\[n i v]** - Show/Hide UndoTree

`CTRL-T` **\[n i v]** - Show/Hide TagBar

`CTRL-J` **\[n i v]** - Show bookmarks

`CTRL-Y` **\[n i v]** - Delete line

`CTRL-W` **\[n i v]** - Delete word

`CTRL-K` **\[n i v]** - Delete to EOL

`CTRL-L` **\[n i v]** - Run VimShell

`CTRL-X` or `SHIFT-Del` **\[n i v]** - Cut

`CTRL-C` or `CTRL-Ins` **\[n i v]** - Copy

`CTRL-V` or `SHIFT-Ins` **\[n i v]** - Paste

`CTRL-/` **\[n i v]** - Comment/Uncomment block

`CTRL-\` **\[n i v]** - Show/Hide YankRing

`CTRL-Space` **\[n]** - Open CtrlSpace buffers

`F2` **\[n i v]** - Save file

`CTRL-F2` **\[n i v]** - Save all files

`SHIFT-F2` **\[n i v]** - Save file as...

`F3` **\[n i v]** - Toggle paste mode

`F4` **\[n v]** - Toggle readonly mode

`F5` **\[n i v]** - Open the selected region in a new narrowed window

`F8` **\[n i v]** - Switch all buffers to tabs

`SHIFT-F8` **\[n i v]** - Switch all buffers to windows

`F10` **\[n i v]** - Quit without saving

`SHIFT-F10` **\[n i v]** - Quit with saving all files

`ESC-ESC` **\[n i v]** - Quit and ask for save files or close current window/buffer

`//` **\[n v]** - No highlights search

`CTRL-]` **\[n v]** - Switch next tab

`CTRL-]` **\[n v]** - Switch prev tab

`]` **\[n v]** - Switch next buffer

`]` **\[n v]** - Switch prev buffer

`ALT-k` **\[n v]** - Upcase word under cursor

`ALT-j` **\[n v]** - Downcase word under cursor

`,o` **\[n]** - Open CtrlP

`,b` **\[n]** - Open CtrlP buffers

`,w` **\[n]** - Save current file

`,.` **\[n]** - Go to last edit location

`,cd` **\[n]**  - Set working directory to current opened file's directory

`,ee` **\[n]**  - Opens an edit command with the path of the currently edited file filled in

`,te` **\[n]**  - Opens a tab edit command with the path of the currently edited file filled in

`,qc` **\[n]**  - Toggle Quickfix window

`,qo` **\[n]**  - Open Quickfix window back up

`,gf` **\[n]**  - Open file with filename under cursor, create new if not exists

`,gfw` **\[n]**  - Open file in windows with filename under cursor, create new if not exists

`,gft` **\[n]**  - Open file in tab with filename under cursor, create new if not exists

`,hh` **\[n]**  - Split window horizontaly

`,vv` **\[n]**  - Split window verticaly

`,#` **\[n v]**  - Surround a word with #{ruby interpolation}

`,"` **\[n v]** - Surround a word with "quotes"

`,'` **\[n v]** - Surround a word with 'single quotes'

`,(` or `,)` **\[n v]** - Surround a word with (parens)

`,[` or `,]` **\[n v]** - Surround a word with [brackets]

`,{` or `,}` **\[n v]** - Surround a word with {braces}

`,rw` **\[n v]** - Overwrite word, replace a word with what's in the yank buffer

`,sw` **\[n v]** - Swaps word under cursor and next word in line

`,ss` **\[n v]** - Strip trailing whitespace

`,st` **\[n v]** - Make selected text Stringify()

`,sp` **\[n v]** - Split line by tags/keywords (using SplitJoin.vim)

`,sj` **\[n v]** - Join lines by tags/keywords (using SplitJoin.vim)

`,sf` **\[n v]** - Search word under cursor or selected word entire files in current directory (recursively)

`,sr` **\[n v]** - Search word under cursor and replace with user inputs

`,s[` **\[n v]** - Select inside [] include brackets

`,s]` **\[n v]** - Select inside []

`,s{` **\[n v]** - Select inside {} include brackets

`,s}` **\[n v]** - Select inside {}

`,s(` **\[n v]** - Select inside () include brackets

`,s)` **\[n v]** - Select inside ()

`,s<` **\[n v]** - Select inside \<> include brackets

`,s>` **\[n v]** - Select inside \<>

`,s"` **\[n v]** - Select inside "

`,s'` **\[n v]** - Select inside '

`,gs` **\[n]** - git status

`,gd` **\[n]** - git diff

`,gc` **\[n]** - git commit

`,gl` **\[n]** - git pull

`,gp` **\[n]** - git push

`,gpa` **\[n]** - git push --all

`,ga` **\[n]** - git add %currentfile%

`,gaa` **\[n]** - git add all untracked files

`,gad` **\[n]** - git add user input files

`,gb` **\[n]** - git blame

`,gr` **\[n]** - git remove %currentfile%

`,ag` **\[n]** - Search in files, using ag

`,af` **\[n]** - Search file, using ag

`,ocf` **\[n]** - Open changed files (by git status)

`,orb` **\[n]** - Select Outer-Ruby-Block

`,t=` **\[n v]** - Align assignments (don't count logic, like == or !=)

`,t,` **\[n v]** - Align on commas

`,t|` **\[n v]** - Align on vertical bars (|)

`,tsp` **\[n v]** - Align on whitespace

`,z` **\[n]** - Toggle Goyo-mode

`'` **\[n]** - Toggle single quotes to double quotes and backwards

`mm` **\[n]** - Toggle bookmark

`mi` **\[n]** - Annotate bookmark

`ma` **\[n]** - Show all bookmarks

`mj` **\[n]** - Go to next bookmark

`mk` **\[n]** - Go to prev bookmark

`mc` **\[n]** - Clear bookmarks

`mx` **\[n]** - Clear all bookmarks

