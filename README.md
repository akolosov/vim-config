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

All variables set in `~/.vimrc.before.local` file.

`g:use_lightline` - Use LightLine instead AirLine

`g:use_powerline_fonts` - Use PowerLine fonts ([Link](https://github.com/Lokaltog/powerline-fonts))

`g:color_scheme` - Your favorite color scheme name (default: hybrid)

`g:airline_theme` - Your favorite AirLine theme (default: bubblegum)

`g:lightline_theme` - Your favorite LightLine theme (default: hybrid)

`g:use_relativenumber` - Use relative line numbers

`g:use_ctrlSpace` - use CtrlSpace plugin instead CtrlP

`g:dont_use_NERDTree` - do not use NERDTree plugin

Shortcuts
=========

| **Shortcut** | **Description** | **Modes** |
|:------------:|-----------------|:---------:|
| `CTRL-A` | Select all text | **\[n i v]** |
| `CTRL-D` | Show/Hide NERDTree (if not set `g:dont_use_NERDTree`)  | **\[n i v]** |
| `CTRL-E` | Create new tab | **\[n i v]** |
| `CTRL-Z` | Show/Hide UndoTree | **\[n i v]** |
| `CTRL-T` | Show/Hide TagBar | **\[n i v]** |
| `CTRL-J` | Show bookmarks | **\[n i v]** |
| `CTRL-Y` | Delete line |	**\[n i v]** |
| `CTRL-W` | Delete word | **\[n i v]** |
| `CTRL-K` | Delete to EOL | **\[n i v]** |
| `CTRL-L` | Run VimShell | **\[n i v]** |
| `CTRL-X` or `SHIFT-Del` | Cut | **\[n i v]** |
| `CTRL-C` or `CTRL-Ins` | Copy | **\[n i v]** |
| `CTRL-V` or `SHIFT-Ins` | Paste | **\[n i v]** |
| `CTRL-/` | Comment/Uncomment block | **\[n i v]** |
| `CTRL-\` | Show/Hide YankRing | **\[n i v]** |
| `CTRL-Space` | Open CtrlSpace buffers (if set `g:use_ctrlSpace`) | **\[n]** |
| `F2` | Save file | **\[n i v]** |
| `CTRL-F2` | Save all files | **\[n i v]** |
| `SHIFT-F2` | Save file as... | **\[n i v]** |
| `F3` | Toggle paste mode | **\[n i v]** |
| `F4` | Toggle readonly mode | **\[n v]** |
| `F5` | Open the selected region in a new narrowed window | **\[n i v]** |
| `F8` | Switch all buffers to tabs | **\[n i v]** |
| `SHIFT-F8` | Switch all buffers to windows | **\[n i v]** |
| `F10` | Quit without saving | **\[n i v]** |
| `SHIFT-F10` | Quit with saving all files | **\[n i v]** |
| `ESC-ESC` | Quit and ask for save files or close current window/buffer | **\[n i v]** |
| `//` | No highlights search | **\[n v]** |
| `CTRL-]` | Switch next tab | **\[n v]** |
| `CTRL-[` | Switch prev tab | **\[n v]** |
| `]` | Switch next buffer | **\[n v]** |
| `[` | Switch prev buffer | **\[n v]** |
| `ALT-k` | Upcase word under cursor | **\[n v]** |
| `ALT-j` | Downcase word under cursor | **\[n v]** |
| `,,` or `,o` | Open CtrlP (if not set `g:use_ctrlSpace`) | **\[n]** |
| `..` or `,b` | Open CtrlP buffers (if not set `g:use_ctrlSpace`) | **\[n]** |
| `''` or `CTRL-6` | " Switch between the last two files | **\[n]** |
| `,w` | Save current file | **\[n]** |
| `,.` | Go to last edit location | **\[n]** |
| `,cd` | Set working directory to current opened file's directory | **\[n]** |
| `,ee` | Opens an edit command with the path of the currently edited file filled in | **\[n]** |
| `,te` | Opens a tab edit command with the path of the currently edited file filled in | **\[n]** |
| `,qc` | Toggle Quickfix window | **\[n]** |
| `,qo` | Open Quickfix window back up | **\[n]** |
| `,gf` | Open file with filename under cursor, create new if not exists | **\[n]** |
| `,gfw` | Open file in windows with filename under cursor, create new if not exists | **\[n]** |
| `,gft` | Open file in tab with filename under cursor, create new if not exists | **\[n]** |
| `,hh` | Split window horizontaly | **\[n]** |
| `,vv` | Split window verticaly | **\[n]** |
| `,#` | Surround a word with #{ruby interpolation} | **\[n v]** |
| `,"` | Surround a word with "quotes" | **\[n v]** |
| `,'` | Surround a word with 'single quotes' | **\[n v]** |
| `,(` or `,)` | Surround a word with (parens) | **\[n v]** |
| `,[` or `,]` | Surround a word with [brackets] | **\[n v]** |
| `,{` or `,}` | Surround a word with {braces} | **\[n v]** |
| `,rw` | Overwrite word, replace a word with what's in the yank buffer | **\[n v]** |
| `,sw` | Swaps word under cursor and next word in line | **\[n v]** |
| `,db` | Delete blank lines | **\[n v]** |
| `,l'` | Surround every line in the file or selected lines with ' | **\[n v]** |
| `,l"` | Surround every line in the file or selected lines with " | **\[n v]** |
| `,l(` | Surround every line in the file or selected lines with () | **\[n v]** |
| `,l[` | Surround every line in the file or selected lines with \[] | **\[n v]** |
| `,l{` | Surround every line in the file or selected lines with {} | **\[n v]** |
| `,ss` | Strip trailing whitespace | **\[n v]** |
| `,st` | Make selected text Stringify() | **\[n v]** |
| `,sp` | Split line by tags/keywords (using SplitJoin.vim) | **\[n v]** |
| `,sj` | Join lines by tags/keywords (using SplitJoin.vim) | **\[n v]** |
| `,sf` | Search word under cursor or selected word entire files in current directory (recursively) | **\[n v]** |
| `,sr` | Search word under cursor and replace with user inputs | **\[n v]** |
| `,s[` | Select inside [] include brackets  | **\[n v]** |
| `,s]` | Select inside [] | **\[n v]** |
| `,s{` | Select inside {} include brackets | **\[n v]** |
| `,s}` | Select inside {} | **\[n v]** |
| `,s(` | Select inside () include brackets | **\[n v]** |
| `,s)` | Select inside () | **\[n v]** |
| `,s<` | Select inside <> include brackets | **\[n v]** |
| `,s>` | Select inside <> | **\[n v]** |
| `,s"` | Select inside " | **\[n v]** |
| `,s'` | Select inside ' | **\[n v]** |
|`,gs` | git status | **\[n]** |
| `,gd` | git diff | **\[n]** |
| `,gc` | git commit | **\[n]** |
| `,gl` | git pull | **\[n]** |
| `,gp` | git push | **\[n]** |
| `,gpa` | git push --all | **\[n]** |
| `,ga` | git add %currentfile% | **\[n]** |
| `,gaa` | git add all untracked files | **\[n]** |
| `,gad` | git add user input files | **\[n]** |
| `,gb` | git blame | **\[n]** |
| `,gr` | git remove %currentfile% | **\[n]** |
| `,ag` | Search in files, using ag | **\[n]** |
| `,af` | Search file, using ag | **\[n]** |
| `,ocf` | Open changed files (by git status) | **\[n]** |
| `,orb` | Select Outer-Ruby-Block | **\[n]** |
| `,t=` | Align assignments (don't count logic, like == or !=) | **\[n v]** |
| `,t,` | Align on commas | **\[n v]** |
| `,t<pipe>` | Align on vertical bars/pipes | **\[n v]** |
| `,tsp` | Align on whitespace | **\[n v]** |
| `,z` | Toggle Goyo-mode | **\[n]** |
| `'` | Toggle single quotes to double quotes and backwards | **\[n]** |
| `mm` | Toggle bookmark | **\[n]** |
| `mi` | Annotate bookmark | **\[n]** |
| `ma` | Show all bookmarks | **\[n]** |
| `mj` | Go to next bookmark | **\[n]** |
| `mk` | Go to prev bookmark | **\[n]** |
| `mc` | Clear bookmarks | **\[n]** |
| `mx` | Clear all bookmarks | **\[n]** |
