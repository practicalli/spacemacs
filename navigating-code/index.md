# Navigating code
Jumping, marks, code folding and searching are effective ways of navigating a codebase, rather than using the arrow keys to move character by character or line by line.

## General Tools
Use Evil normal mode to quickly jump around your code.

| Key bindings       | Description                                                                                                            |
|--------------------|------------------------------------------------------------------------------------------------------------------------|
| `SPC j j`          | Search across all windows for given character(s), type highlighted character(s) to jump to location                    |
| `SPC j C`          | Jump to first unbalanced parens                                                                                        |
| `SPC j c` / `' '` | Jump to last change                                                                                                    |
| `m x` , `' x`      | Create marker called `x`, jump to marker called `x` (use any alphabet character) (see [markers section](markers.md)) |
| `#`                | Symbol highlight transient state - navigate symbol names, iedit, swoop                                                 |
| `SPC s s`          | Search in current buffer, `C-j`/`C-k` to navigate results                                                              |
| `SPC s p`          | Search in project, `C-j/k` to navigate results                                                                         |


## Code Folding
Folding code hides away details, so you can just look at the function definitions and data structures of interest on the same screen.

| Keybindings | Description                                                 |
|-------------|-------------------------------------------------------------|
| `z` or `SPC z .`  | folding code blocks

`z` opens a menu to allow you to un/fold your code quickly.

[![Spacemacs Zoom menu](/images/spacemacs-vim-normal-z-menu.png)](/images/spacemacs-vim-normal-z-menu.png)

`SPC z .` is the code fold transient menu should you wish to un/fold code many times.

See the [code folding](/navigating-code/code-folding.md) section for more details.


## Structural Editing
`SPC k` starts [lisp state structural editing](/structural-editing/).

`hjkl` to navigate the cursor across symbols and open/close parens

![Spacemacs Structural Editing - Lisp state menu](/images/spacemacs-lisp-state-menu.png)
