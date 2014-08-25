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

**g:use_lightline** - Use LightLine instead AirLine

**g:airline_powerline_fonts** - Use PowerLine fonts ([Link](https://github.com/Lokaltog/powerline-fonts))

Shortcuts
=========

**CTRL-A** - Select all text

**CTRL-D** - Show/Hide NERDTree

**CTRL-E** - Create new tab

**CTRL-Z** - Show/Hide UndoTree

**CTRL-T** - Show/Hide TagBar

**CTRL-J** - Show bookmarks

**CTRL-Y** - Delete line

**CTRL-W** - Delete word

**CTRL-K** - Delete to EOL

**CTRL-L** - Run VimShell

**CTRL-X** or **SHIFT-Del** - Cut

**CTRL-C** or **CTRL-Ins** - Copy

**CTRL-V** or **SHIFT-Ins** - Paste

**CTRL-/** - Comment/Uncomment block

**CTRL-\** - Show/Hide YankRing

**CTRL-Space** - Open CtrlSpace buffers

**F2** - Save file

**CTRL-F2** - Save all files

**SHIFT-F2** or **CTRL-S** - Save file as...

**F3** - Toggle paste mode

**F4** - Toggle readonly mode

**F5** - Open the selected region in a new narrowed window

**F8** - Switch all buffers to tabs

**SHIFT-F8** - Switch all buffers to windows

**F10** - Quit without saving

**SHIFT-F10** - Quit with saving all files

**ESC-ESC** - Quit and ask for save files or close current window/buffer

**//** - No highlights search

**CTRL-]** - Switch next tab

**CTRL-]** - Switch prev tab

**]** - Switch next buffer

**]** - Switch prev buffer

**ALT-k** - Upcase word under cursor

**ALT-j** - Downcase word under cursor

**<[Leader]>o** - Open CtrlP

**<[Leader]>b** - Open CtrlP buffers

**<[Leader]>w** - Save current file

**<[Leader]>.** - Go to last edit location

**<[Leader]>cd** - Set working directory to current opened file's directory

**<[Leader]>ee** - Opens an edit command with the path of the currently edited file filled in

**<[Leader]>te** - Opens a tab edit command with the path of the currently edited file filled in

**<[Leader]>qc** - Toggle Quickfix window

**<[Leader]>qo** - Open  Quickfix window back up

**<[Leader]>gf** - Open file with filename under cursor, create new if not exists

**<[Leader]>gfw** - Open file in windows with filename under cursor, create new if not exists

**<[Leader]>gft** - Open file in tab with filename under cursor, create new if not exists

**<[Leader]>hh** - Split window horizontaly

**<[Leader]>vv** - Split window verticaly

**<[Leader]>#** - Surround a word with #{ruby interpolation}

**<[Leader]>"** - Surround a word with "quotes"

**<[Leader]>'** - Surround a word with 'single quotes'

**<[Leader]>(** or **<[Leader]>)** - Surround a word with (parens)

**<[Leader]>[** or **<[Leader]>]** - Surround a word with [brackets]

**<[Leader]>{** or **<[Leader]>}** - Surround a word with {braces}

**<[Leader]>rw** - Overwrite word, replace a word with what's in the yank buffer

**<[Leader]>sw** - Swaps word under cursor and next word in line

**<[Leader]>ss** - Strip trailing whitespace

**<[Leader]>st** - Make selected text Stringify()

**<[Leader]>sp** - Split line by tags/keywords (using SplitJoin.vim)

**<[Leader]>sj** - Join lines by tags/keywords (using SplitJoin.vim)

**<[Leader]>sf** - Search word under cursor or selected word entire files in current directory (recursively)

**<[Leader]>sr** - Search word under cursor and replace with user inputs

**<[Leader]>s[** - Select inside [] include brackets

**<[Leader]>s]** - Select inside []

**<[Leader]>s{** - Select inside {} include brackets

**<[Leader]>s}** - Select inside {}

**<[Leader]>s(** - Select inside () include brackets

**<[Leader]>s)** - Select inside ()

**<[Leader]>s<** - Select inside \<> include brackets

**<[Leader]>s>** - Select inside \<>

**<[Leader]>s"** - Select inside "

**<[Leader]>s'** - Select inside '

**<[Leader]>gs** - git status

**<[Leader]>gd** - git diff

**<[Leader]>gc** - git commit

**<[Leader]>gl** - git pull

**<[Leader]>gp** - git push

**<[Leader]>gpa** - git push --all

**<[Leader]>ga** - git add %currentfile%

**<[Leader]>gaa** - git add all untracked files

**<[Leader]>gad** - git add user input files

**<[Leader]>gb** - git blame

**<[Leader]>gr** - git remove %currentfile%

**<[Leader]>ag** - Search in files, using ag

**<[Leader]>af** - Search file, using ag

**<[Leader]>ocf** - Open changed files (by git status)

**<[Leader]>orb** - Select Outer-Ruby-Block

**<[Leader]>t=** - Align assignments (don't count logic, like == or !=)

**<[Leader]>t,** - Align on commas

**<[Leader]>t|** - Align on vertical bars (|)

**<[Leader]>tsp** - Align on whitespace

**<[Leader]>z** - Toggle Goyo-mode

**'** - Toggle single quotes to double quotes and backwards

**mm** - Toggle bookmark

**mi** - Annotate bookmark

**ma** - Show all bookmarks

**mj** - Go to next bookmark

**mk** - Go to prev bookmark

**mc** - Clear bookmarks

**mx** - Clear all bookmarks
