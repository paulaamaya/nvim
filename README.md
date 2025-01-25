# nvim
My neovim config.

> [!NOTE]
> Mac Package Dependencies: `ripgrep`, `node`, 
> Arch Package Dependencies: `ripgrep`, `nodejs`, `tree-sitter-cli`

## Keymaps

### Core Keymaps

**Insert Mode**
- `jk` Exit insert mode

**Normal Mode**
- `+` Increment number.
- `-` Decrement number.
- `sv` Split window vertically.
- `sh` Split window horizontally.
- `se` Make splits equal size.
- `sx` Close current split window.
- `to` Open new tab.
- `tx` Close current tab.
- `tn` Go to next tab.
- `tp` Go to previous tab.
- `tf` Open current buffer in new tab.
- `U` Redo last change.
- `gO` Insert new line above without going into insert mode.  
- `go` Insert new line below without going into insert mode.  

**Visual Mode**
- `K` Move entire line up.
- `J` Move entire line down. 

### File Explorer

**Normal Mode**
- `ee` Toggle file explorer.
- `ef` Toggle file explorer at current file.
- `ec` Collapse directories.
- `er` Reload file explorer.

### Fuzzy Finder
 **Insert Mode**
 - `Ctrl + K` Move to previous result.
 - `Ctrl + J` Move to next result.
 - `Ctrl + Q` Send result to quick-fix list.

 **Normal Mode**
 - `ff` Find files in present working directory.
 - `fr` Find recent files.
 - `fs` Find string in present working directory.
 - `fc` Find string under cursor in present working directory.

> [!TIP]
> The following telescope commands are also worth remembering:
> - `Ctrl + U` Toggle preview up.
> - `Ctrl + D` Toggle preview down.
> - `Ctrl + C` Quit telescope.

### Snippets
**Insert Mode** 
- `Ctrl + J` Next suggestion.
- `Ctrl + K` Previous suggestion. 
- `Ctrl + _` Show snippet suggestions.
- `Ctrl + e` Quit suggestions.
- ` Ctrl + f` Scroll forward through file suggestion.
- ` Ctrl + b` Scroll backward  through file suggestion.

### LSP
**Normal Mode**
- `lR` Show LSP reference.
- `ld` Go to declaration.
- `lD` Show LSP definition.
- `lI` Show LSP type implementation.
- `lT` Show LSP type definition.
- `lr` Restart LSP.
- `ca` See code actions. 
- `rn` Smart rename.
- `df` Show buffer diagnostics.
- `dl` Show line diagnostics.
- `dN` Go to previous diagnostic. 
- `dn` Go to next diagnostic. 
- `D` Show documentation. 
