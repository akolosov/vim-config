Installation
============

To install just run in terminal:

```bash
curl https://raw.githubusercontent.com/akolosov/vim-config/master/scripts/bootstrap.sh -L -o - | sh
```

... and wait until successfully installed and have fun with VIM!


Requirements
============
	- vim, macvim, neovim with +ruby, +python, +lua supports
	- installed curl, git


Screenshots
===========
![1](https://cloud.githubusercontent.com/assets/158733/4518806/230a1596-4c9f-11e4-9069-5aabb536aff2.png)
![2](https://cloud.githubusercontent.com/assets/158733/4518807/23103d36-4c9f-11e4-8f88-751d95bb1673.png)
![3](https://cloud.githubusercontent.com/assets/158733/4518805/23085a1c-4c9f-11e4-9e98-95d6cc84bed6.png)


Variables
=========

All variables set in `~/.vimrc.before.local` file.

`g:hardcore_mode` - allow to use VIM Hardcore mode (unset `g:use_arrow_keys`, `g:use_copy_cut_paste_keys` and many keymaps)

`g:hardcore_mode_with_arrow_keys` - the same as `g:hardcore_mode`, but arrow keys for navigation is enabled

`g:use_powerline_fonts` - allow to use PowerLine fonts ([Link](https://github.com/Lokaltog/powerline-fonts))

`g:color_scheme` - Your favorite color scheme name (default: hybrid)

`g:airline_theme` - Your favorite AirLine theme (default: bubblegum)

`g:lightline_theme` - Your favorite LightLine theme (default: hybrid)

`g:dont_show_nerd_tree` - do not show NERDTree on startup (if plugin is enabled)

`g:use_arrow_keys` - allow to use arrow keys. Only hjkl! Only hardcore!

`g:use_copy_cut_paste_keys` - allow to use Ctrl-C/V/X keys for Copy/Paste/Cut

`g:use_autosave` - allow to autosave all changes, like Textmate


Shortcuts
=========

| **Shortcut** | **Description** | **Modes** |
|:------------:|-----------------|:---------:|
| `CTRL-P` | Open CtrlP menu | **\[n i v]** |
| `CTRL-T` | Create new tab (if not set `g:hardcore_mode`) | **\[n i v]** |
| `CTRL-Z` | Show/Hide UndoTree (if not set `g:hardcore_mode`) | **\[n i v]** |
| `CTRL-G` | Show/Hide TagBar (if not set `g:hardcore_mode`) | **\[n i v]** |
| `CTRL-Y` | Delete line (if not set `g:hardcore_mode`) | **\[n i v]** |
| `CTRL-L` | Delete to EOL (if not set `g:hardcore_mode`) | **\[n i v]** |
| `CTRL-H` | Delete to BOL (if not set `g:hardcore_mode`) | **\[n i v]** |
| `CTRL-X` or `SHIFT-Del` | Cut (if set `g:use_copy_cut_paste_keys` and not set `g:hardcore_mode`) | **\[n i v]** |
| `CTRL-C` or `CTRL-Ins` | Copy (if set `g:use_copy_cut_paste_keys` and not set `g:hardcore_mode`) | **\[n i v]** |
| `CTRL-V` or `SHIFT-Ins` | Paste (if set `g:use_copy_cut_paste_keys` and not set `g:hardcore_mode`) | **\[n i v]** |
| `CTRL-\` | Comment/Uncomment block (if not set `g:hardcore_mode`) | **\[n i v]** |
| `CTRL-D` | Show/Hide NERDTree or VimFiler (if plugin loaded and not set `g:hardcore_mode`) | **\[n i v]** |
| `CTRL-F` | Show current file in NERDTree or VimFiler (if plugin loaded and not set `g:hardcore_mode`) | **\[n i v]** |
| `F2` | Save file (if not set `g:hardcore_mode`) | **\[n i v]** |
| `CTRL-F2` | Save all files (if not set `g:hardcore_mode`) | **\[n i v]** |
| `SHIFT-F2` | Save file as... (if not set `g:hardcore_mode`) | **\[n i v]** |
| `F3` | Toggle paste mode (if not set `g:hardcore_mode`) | **\[n i v]** |
| `F4` | Toggle readonly mode (if not set `g:hardcore_mode`) | **\[n v]** |
| `F5` | Open the selected region in a new narrowed window (if not set `g:hardcore_mode`) | **\[n i v]** |
| `F6` | Switch Quickfix open/close (if not set `g:hardcore_mode`) | **\[n i v]** |
| `SHIFT-F6` | Switch Location list open/close (if not set `g:hardcore_mode`) | **\[n i v]** |
| `SHIFT-F7` | Fuzzy file finder (if not set `g:hardcore_mode`) | **\[n i v]** |
| `F7` | `Ag` search in files (if not set `g:hardcore_mode`) | **\[n i v]** |
| `F8` | Search and Replace in current file (if not set `g:hardcore_mode`) | **\[n i v]** |
| `F9` | Switch current folding open/close (if not set `g:hardcore_mode`) | **\[n i v]** |
| `SHIFT-F9` | Switch all foldings open/close (if not set `g:hardcore_mode`) | **\[n i v]** |
| `F10` | Quit without saving (if not set `g:hardcore_mode`) | **\[n i v]** |
| `SHIFT-F10` | Quit with saving all files (if not set `g:hardcore_mode`) | **\[n i v]** |
| `ESC-ESC` | Quit and ask for save files or close current window/buffer (if not set `g:hardcore_mode`) | **\[n i v]** |
| `CMD-]` | Switch next tab (if not set `g:hardcore_mode`) | **\[n v]** |
| `CMD-[` | Switch prev tab (if not set `g:hardcore_mode`) | **\[n v]** |
| `<Leader>]` | Switch next buffer (if not set `g:hardcore_mode`) | **\[n v]** |
| `<Leader>[` | Switch prev buffer (if not set `g:hardcore_mode`) | **\[n v]** |
| `<tilde><tilde>` | Run VimShell (if plugin loaded and not set `g:hardcore_mode`) | **\[n v]** |
| `'` | Toggle single quotes to double quotes and backwards | **\[n]** |
| `<Leader>?` | Show most plugin keybindings | **\[n]** |
| `//` | No highlights search | **\[n v]** |
| `\\` | Comment/Uncomment current line or selection | **\[n v]** |
| `<Leader>g` | Show/Hide TagBar (if plugin loaded) | **\[n]** |
| `<Leader>zz` | Show/Hide UndoTree (if plugin loaded) | **\[n]** |
| `<Leader>zf` | Fuzzy file finder (if plugin loaded) | **\[n]** |
| `<Leader>gf` | Open file with filename under cursor, create new if not exists | **\[n]** |
| `<Leader>gfw` | Open file in windows with filename under cursor, create new if not exists | **\[n]** |
| `<Leader>gft` | Open file in tab with filename under cursor, create new if not exists | **\[n]** |
| `<Leader>,` or `<Leader>o` | Open CtrlP (if plugin loaded) | **\[n]** |
| `..` or `<Leader>b` | Open CtrlP buffers (if plugin loaded) | **\[n]** |
| `''` or `CTRL-6` | " Switch between the last two files | **\[n]** |
| `;;` | Append semicolon at EOL | **\[n]** |
| `;;<CR>` | Append semicolon at EOL and add new line below | **\[n]** |
| `<Leader>hh` | Split window horizontaly | **\[n]** |
| `<Leader>vv` | Split window verticaly | **\[n]** |
| `<Leader>a` | Select all text in current buffer | **\[n]** |
| `<Leader><Down>` | Insert new line after current line | **\[n]** |
| `<Leader><Up>` | Insert new line before current line | **\[n]** |
| `<Leader><CR>` | Toggle show Space/Tab/EOL | **\[n]** |
| `<Leader>=` | Insert new line with '=' after current line with the same length | **\[n]** |
| `<Leader>-` | Insert new line with '-' after current line with the same length | **\[n]** |
| `<Leader>w` | Save current file | **\[n]** |
| `<Leader>wa` | Save all files  | **\[n]** |
| `<Leader>w?` | Save file as... | **\[n]** |
| `<Leader>wq` | Save current file and close it | **\[n]** |
| `<Leader>x` | Save current file and close it | **\[n]** |
| `<Leader>X` | Close current file and without saving | **\[n]** |
| `<Leader>x!` | Save all files and close VIM | **\[n]** |
| `<Leader>X!` | Close VIM without saving files | **\[n]** |
| `<Leader>tb` | Switch all buffers to tabs | **\[n]** |
| `<Leader>sb` | Switch all buffers to windows | **\[n v]** |
| `<Leader>nd` | Show/Hide NERDTree (if plugin loaded) | **\[n i v]** |
| `<Leader>nf` | Show current file in NERDTree (if plugin loaded) | **\[n]** |
| `<Leader>.` | Go to last edit location | **\[n]** |
| `<Leader>cd` | Set working directory to current opened file's directory | **\[n]** |
| `<Leader>ee` | Opens an edit command with the path of the currently edited file filled in | **\[n]** |
| `<Leader>te` | Opens a tab edit command with the path of the currently edited file filled in | **\[n]** |
| `<Leader>qc` | Toggle Quickfix window | **\[n]** |
| `<Leader>qo` | Open Quickfix window back up | **\[n]** |
| `$` | Surround a selection with ${JS interpolation} | **\[v]** |
| `#` | Surround a word or selection with #{ruby interpolation} | **\[n v]** |
| `"` | Surround a word or selection with "quotes" | **\[n v]** |
| `'` | Surround a word or selection with 'single quotes' | **\[n v]** |
| `(` or `)` | Surround a word or selection with (parens) | **\[n v]** |
| `[` or `]` | Surround a word or selection with [brackets] | **\[n v]** |
| `{` or `}` | Surround a word or selection with {braces} | **\[n v]** |
| `<Leader>rw` | Overwrite word, replace a word with what's in the yank buffer | **\[n v]** |
| `<Leader>sw` | Swaps word under cursor and next word in line | **\[n v]** |
| `<Leader>db` | Delete blank lines | **\[n v]** |
| `<Leader>l'` | Surround every line in the file or selected lines with ' | **\[n v]** |
| `<Leader>l"` | Surround every line in the file or selected lines with " | **\[n v]** |
| `<Leader>l(` | Surround every line in the file or selected lines with () | **\[n v]** |
| `<Leader>l[` | Surround every line in the file or selected lines with \[] | **\[n v]** |
| `<Leader>l{` | Surround every line in the file or selected lines with {} | **\[n v]** |
| `<Leader>ss` | Strip trailing whitespace | **\[n v]** |
| `<Leader>sf` | Search word under cursor or selected word entire files in current directory (recursively) | **\[n v]** |
| `<Leader>sr` | Search word under cursor and replace with user inputs | **\[n v]** |
| `<Leader>s/` | Search selected word or user input in whole project | **\[n v]** |
| `<Leader>yw` | Yank word under cursor | **\[n]** |
| `<Leader>yl` | Yank current line | **\[n]** |
| `<Leader>ls` | Send current line to console (tmux by default) | **\[n]** |
| `<Leader>ms` | Send current motion to console (tmux by default) | **\[n]** |
| `<Leader>rs` | Send current selection to console (tmux by default) | **\[v]** |
| `<Leader>gs` | git status | **\[n]** |
| `<Leader>gd` | git diff | **\[n]** |
| `<Leader>ga` | git add %currentfile% | **\[n]** |
| `<Leader>gA` | git add all untracked files | **\[n]** |
| `<Leader>g?` | git add user input files | **\[n]** |
| `<Leader>gb` | git blame | **\[n]** |
| `<Leader>ag` | Search in files, using ag | **\[n]** |
| `<Leader>af` | Search file, using ag | **\[n]** |
| `<Leader>ocf` | Open changed files (by git status) | **\[n]** |
| `<Leader>orb` | Select Outer-Ruby-Block | **\[n]** |
| `<Leader>t=` | Align assignments (don't count logic, like == or !=) | **\[n v]** |
| `<Leader>t,` | Align on commas | **\[n v]** |
| `<Leader>t<pipe>` | Align on vertical bars/pipes | **\[n v]** |
| `<Leader>tsp` | Align on whitespace | **\[n v]** |

