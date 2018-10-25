# Vim editing for Clojure developers

> #### TODO::work in progress, sorry

Vim keybindings that drive Vim editing tools that are common for developers

 `x p`  simple transpose
`c w` change word
 `v (select) c`  change region
`g c c`  comment line
`v (select) g c`  comment region
`SPC v c` change current word/region
`SPC v d` delete current word/region
`c w` change from cursor to end of word
`d w` delete from cursor to end of word
`C`  change from cursor to end of line
`D`  delete from cursor to end of line
`d $` delete to end of line ,
`E`/`e`  Jumps to the end of the word


`.` (the repeat operator). You have to use vim a certain way (I would argue the right way, e.g. without arrow keys in insert mode) to make good use of it. But there's so much power there.

`W`/`B` motions, which are like the lowercase versions except they jump between whitespace-delimited words only.

Combine d | c | v | r with avy-goto



## Simulated structural editing with surround ##

| Keybinding | Description                                                                     |
|------------|---------------------------------------------------------------------------------|
| `v s ]`    | surround with [characters] without spaces                                       |
| `v s [`    | surround with [ characters ] without spaces                                     |
| `c s ( [`  | change surrounding from ( to [                                                  |
| `c i (`    | change in (                                                                     |
| `c a (`    | change “around” (                                                               |
| `%`        | jump forwards to next paren, further `%` toggles between open and close parens. |

`M-t` transpose words (that may be Emacs keybinding),


## multi-replace with iedit and narrowing.

`SPC v` select whatever you're at. Press `v` to widen region and `S-v` to narrow region.




## jumping by sections

`{`/`}` motions (jump to next/prev empty line). Makes rearranging paragraphs and such really easy too. For example, `{ d } { P` will swap the current paragraph with the preceding one.

`>` and `<` (indent and dedent) operators, useful with the aforementioned `}`/`{` motions.

`zt`, `zz`, and `zb` to pull the current line to the top/middle/bottom of the screen.


`[count]G` Jump to line number

(/) Jump to start of previous/next sentence
{/} Jump to start of previous/next paragraph
H/M/L Jump to top/middle/bottom of screen
gf Jump to file name under the cursor - try this in the summary.md file
<C-]> Jump to definition of keyword under the cursor
’{mark}/`{mark} Jump to a mark -???



## Code

`g D`open definition in another window

`=` (code-aware indenting) operator. Nice with the `ap` (a paragraph) text object.


## code folding

`zc` and `zo` are useful to close and open folds, which can be a nice way of focusing on certain pieces of code.
