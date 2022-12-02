# Vim editing for Clojure developers

Vim keybindings that drive Vim editing tools that are common for developers


## Comments and Commenting code


`g c c`  comment line

`SPC ; ;` comment current line

`SPC ; p` comment current paragraph / code structure

`v (select) g c`  comment region

`g c 9 j`  comment 9 lines from current, downwards

`SPC v v g c`  select line and comment it


## Simulated structural editing with surround ##

| Keybinding | Description                                                                     |
|------------|---------------------------------------------------------------------------------|
| `v s ]`    | surround with [characters] without spaces                                       |
| `v s [`    | surround with [ characters ] without spaces                                     |
| `c s ( [`  | change surrounding from ( to [                                                  |
| `c i (`    | change in (                                                                     |
| `c a (`    | change “around” (                                                               |
| `%`        | jump forwards to next paren, further `%` toggles between open and close parens. |
| `x p`      | transpose characters (cut current, paste after)                                 |


## multi-replace with iedit and narrowing

`SPC v` select whatever you're at. Press `v` to widen region and `S-v` to narrow region.

`zt`, `zz`, and `zb` to pull the current line to the top/middle/bottom of the screen.

`[count]G` jump to line number

`gf` jump to file name under the cursor - try this in the summary.md file

`C-]` Jump to definition of keyword under the cursor


## Code

`g D`open definition in another window

`=` (code-aware indenting) operator. Nice with the `ap` (a paragraph) text object.


## code folding

`zc` and `zo` are useful to close and open folds, which can be a nice way of focusing on certain pieces of code.


## Transposing characters and sections ##

`x p`  simple transpose of the current and next character

`M-t` transpose words before and after cursor position

`{`, `}` motions jump to next and previous empty lines.  This motion makes it simple to rearrange paragraphs

`{ d }` will kill the paragraph (or multiple paragraphs)

`{` will jump to the start of the previous paragraph

`p` pastes the killed paragraph before the current paragraph

`>` and `<` (indent and dedent) operators, useful with the aforementioned `}`/`{` motions.
