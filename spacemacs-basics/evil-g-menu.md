# Evil G menu
`g` in normal mode opens a menu of convenient utilities.  Practicalli uses this menu to comment existing lines, edit with multiple cursors, jumping to top or bottom of the buffer and joining lines together.

[![Spacemacs Vim Normal - g menu](/images/spacemacs-vim-normal-g-menu.png)](/images/spacemacs-vim-normal-g-menu.png)


## Comment lines and regions
`g c c` will comment the current line using the buffer major mode comment character(s).  A prompt will ask if no comment character is set for the major mode.

`g c` with a selected region will comment all lines with the major mode comment character(s)


## Multiple cursors
`g r` is the menu for [multiple cursors](/spacemacs-basics/evil-tools/multiple-cursors.md), allowing simultaneous editing at multiple points

`12 gr j` will add a cursor to the 12 lines below the current cursor, using the same position in the line.  Any edits are applied to all cursors.

`g r q` will quit multiple cursors, returning to just one cursor.


## Jumping around
`g g` jumps to the top of the buffer, `g G` to the bottom of the buffer

`g d` to jump to the source code of a function definition, `g D` to open that in a different window.


## Moving text around
`g J` joins the next line to the current line.


## Workspaces
`g t` to switch to next [workspace](working-with-projects/layouts.md), `g T` to switch to previous.


## Changing text case
`g u` to change the current character or selection to lowercase, `g U` for uppercase.
