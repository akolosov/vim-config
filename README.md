vim-config
==========

To install just run in terminal:

```bash
curl https://raw.githubusercontent.com/akolosov/vim-config/master/scripts/bootstrap.sh -L -o - | sh
```

... wait until successfully installed and have fun with VIM!

Inspired by [spf13-vim](http://vim.spf13.com/) and [YADR](http://skwp.github.io/dotfiles/) - thanks guys!


Screenshots
===========
![1](https://cloud.githubusercontent.com/assets/158733/4518806/230a1596-4c9f-11e4-9069-5aabb536aff2.png)
![2](https://cloud.githubusercontent.com/assets/158733/4518807/23103d36-4c9f-11e4-8f88-751d95bb1673.png)
![3](https://cloud.githubusercontent.com/assets/158733/4518805/23085a1c-4c9f-11e4-9e98-95d6cc84bed6.png)


Variables
=========

All variables set in `~/.vimrc.before.local` file.

`g:hardcore_mode` - allow to use VIM Hardcore mode (unset `g:use_arrow_keys`, `g:use_copy_cut_paste_keys`, `g:use_ctrl_space`, `g:use_vim_shell` and many keymaps)

`g:hardcore_mode_with_arrow_keys` - the same as `g:hardcore_mode`, but arrow keys for navigation is enabled

`g:use_lightline` - allow to use LightLine instead AirLine

`g:use_powerline_fonts` - allow to use PowerLine fonts ([Link](https://github.com/Lokaltog/powerline-fonts))

`g:color_scheme` - Your favorite color scheme name (default: hybrid)

`g:airline_theme` - Your favorite AirLine theme (default: bubblegum)

`g:lightline_theme` - Your favorite LightLine theme (default: hybrid)

`g:use_relativenumber` - allow to use relative line numbers

`g:use_ctrl_space` - allow to use CtrlSpace plugin instead CtrlP

`g:use_vim_shell` - allow to use VimShell plugin

`g:use_nerd_tree` - allow to use NERDTree plugin

`g:dont_show_nerd_tree` - do not show NERDTree on startup

`g:use_arrow_keys` - allow to use arrow keys. Only hjkl! Only hardcore!

`g:use_copy_cut_paste_keys` - allow to use Ctrl-C/V/X keys for Copy/Paste/Cut

`g:use_autosave` - allow to autosave all changes, like Textmate


Shortcuts
=========

| **Shortcut** | **Description** | **Modes** |
|:------------:|-----------------|:---------:|
| `CTRL-P` | Open CtrlP menu (if not set `g:use_ctrl_space`) | **\[n i v]** |
| `CTRL-T` | Create new tab (if not set `g:hardcore_mode`) | **\[n i v]** |
| `CTRL-Z` | Show/Hide UndoTree (if not set `g:hardcore_mode`) | **\[n i v]** |
| `CTRL-G` | Show/Hide TagBar (if not set `g:hardcore_mode`) | **\[n i v]** |
| `CTRL-Y` | Delete line (if not set `g:hardcore_mode`) |	**\[n i v]** |
| `CTRL-L` | Delete to EOL (if not set `g:hardcore_mode`) | **\[n i v]** |
| `CTRL-H` | Delete to BOL (if not set `g:hardcore_mode`) | **\[n i v]** |
| `CTRL-X` or `SHIFT-Del` | Cut (if set `g:use_copy_cut_paste_keys` and not set `g:hardcore_mode`) | **\[n i v]** |
| `CTRL-C` or `CTRL-Ins` | Copy (if set `g:use_copy_cut_paste_keys` and not set `g:hardcore_mode`) | **\[n i v]** |
| `CTRL-V` or `SHIFT-Ins` | Paste (if set `g:use_copy_cut_paste_keys` and not set `g:hardcore_mode`) | **\[n i v]** |
| `CTRL-/` or `CTRL-7` | Comment/Uncomment block (if not set `g:hardcore_mode`) | **\[n i v]** |
| `CTRL-Space` | Open CtrlSpace buffers (if set `g:use_ctrl_space` and not set `g:hardcore_mode`) | **\[n]** |
| `F2` | Save file (if not set `g:hardcore_mode`) | **\[n i v]** |
| `CTRL-F2` | Save all files (if not set `g:hardcore_mode`) | **\[n i v]** |
| `SHIFT-F2` | Save file as... (if not set `g:hardcore_mode`) | **\[n i v]** |
| `F3` | Toggle paste mode (if not set `g:hardcore_mode`) | **\[n i v]** |
| `F4` | Toggle readonly mode (if not set `g:hardcore_mode`) | **\[n v]** |
| `F5` | Open the selected region in a new narrowed window (if not set `g:hardcore_mode`) | **\[n i v]** |
| `F10` | Quit without saving (if not set `g:hardcore_mode`) | **\[n i v]** |
| `SHIFT-F10` | Quit with saving all files (if not set `g:hardcore_mode`) | **\[n i v]** |
| `ESC-ESC` | Quit and ask for save files or close current window/buffer (if not set `g:hardcore_mode`) | **\[n i v]** |
| `CTRL-]` | Switch next tab (if not set `g:hardcore_mode`) | **\[n v]** |
| `CTRL-[` | Switch prev tab (if not set `g:hardcore_mode`) | **\[n v]** |
| `]` | Switch next buffer (if not set `g:hardcore_mode`) | **\[n v]** |
| `[` | Switch prev buffer (if not set `g:hardcore_mode`) | **\[n v]** |
| `ALT-Up` | Upcase word under cursor (if not set `g:hardcore_mode`) | **\[n v]** |
| `ALT-Down` | Downcase word under cursor (if not set `g:hardcore_mode`) | **\[n v]** |
| `<tilde><tilde>` | Run VimShell (if set `g:use_vim_shell` and not set `g:hardcore_mode`) | **\[n v]** |
| `'` | Toggle single quotes to double quotes and backwards (if not set `g:hardcore_mode`) | **\[n]** |
| `,?` | Show most plugin keybindings (if not set `g:hardcore_mode`) | **\[n]** |
| `//` | No highlights search | **\[n v]** |
| `\\` | Comment/Uncomment current line or selection | **\[n v]** |
| `,gf` | Open file with filename under cursor, create new if not exists (if not set `g:hardcore_mode`) | **\[n]** |
| `,gfw` | Open file in windows with filename under cursor, create new if not exists (if not set `g:hardcore_mode`) | **\[n]** |
| `,gft` | Open file in tab with filename under cursor, create new if not exists (if not set `g:hardcore_mode`) | **\[n]** |
| `,,` or `,o` | Open CtrlP (if not set `g:use_ctrl_space`) | **\[n]** |
| `..` or `,b` | Open CtrlP buffers (if not set `g:use_ctrl_space`) | **\[n]** |
| `''` or `CTRL-6` | " Switch between the last two files | **\[n]** |
| `;;` | Append semicolon at EOL | **\[n]** |
| `;;<CR>` | Append semicolon at EOL and add new line below | **\[n]** |
| `,hh` | Split window horizontaly | **\[n]** |
| `,vv` | Split window verticaly | **\[n]** |
| `,a` | Select all text in current buffer | **\[n]** |
| `,<Down>` | Insert new line after current line | **\[n]** |
| `,<Up>` | Insert new line before current line | **\[n]** |
| `,<CR>` | Toggle show Space/Tab/EOL | **\[n]** |
| `,=` | Insert new line with '=' after current line with the same length | **\[n]** |
| `,-` | Insert new line with '-' after current line with the same length | **\[n]** |
| `,w` | Save current file | **\[n]** |
| `,wa` | Save all files  | **\[n]** |
| `,w?` | Save file as... | **\[n]** |
| `,wq` | Save current file and close it | **\[n]** |
| `,x` | Save current file and close it | **\[n]** |
| `,X` | Close current file and without saving | **\[n]** |
| `,x!` | Save all files and close VIM | **\[n]** |
| `,X!` | Close VIM without saving files | **\[n]** |
| `,tb` | Switch all buffers to tabs | **\[n]** |
| `,sb` | Switch all buffers to windows | **\[n v]** |
| `,nd` | Show/Hide NERDTree (if set `g:use_nerd_tree`)  | **\[n i v]** |
| `,nf` | Show current file in NERDTree (if not set `g:use_nerd_tree`) | **\[n]** |
| `,.` | Go to last edit location | **\[n]** |
| `,cd` | Set working directory to current opened file's directory | **\[n]** |
| `,ee` | Opens an edit command with the path of the currently edited file filled in | **\[n]** |
| `,te` | Opens a tab edit command with the path of the currently edited file filled in | **\[n]** |
| `,qc` | Toggle Quickfix window | **\[n]** |
| `,qo` | Open Quickfix window back up | **\[n]** |
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
| `,yw` | Yank word under cursor | **\[n]** |
| `,yl` | Yank current line | **\[n]** |
| `,ls` | Send current line to console (tmux by default) | **\[n]** |
| `,ms` | Send current motion to console (tmux by default) | **\[n]** |
| `,rs` | Send current selection to console (tmux by default) | **\[v]** |
| `,gs` | git status | **\[n]** |
| `,gd` | git diff | **\[n]** |
| `,gc` | git commit | **\[n]** |
| `,gl` | git pull | **\[n]** |
| `,gp` | git push | **\[n]** |
| `,gpa` | git push --all | **\[n]** |
| `,ga` | git add %currentfile% | **\[n]** |
| `,gu` | git add all untracked files | **\[n]** |
| `,g?` | git add user input files | **\[n]** |
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
| `mm` | Toggle bookmark | **\[n]** |
| `mi` | Annotate bookmark | **\[n]** |
| `ma` | Show all bookmarks | **\[n]** |
| `mj` | Go to next bookmark | **\[n]** |
| `mk` | Go to prev bookmark | **\[n]** |
| `mc` | Clear bookmarks | **\[n]** |
| `mx` | Clear all bookmarks | **\[n]** |
