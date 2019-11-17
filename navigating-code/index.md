# Navigating code

Jumping, marks, code folding and searching are effective ways of navigating a codebase.

Rather than use the arrow keys to move character by character or line by line, Spacemacs enables you to move around much quicker

## General Tools

Use Evil normal mode to quickly jump around your code.

| Keybindings        | Description                                                                                                            |
|--------------------|------------------------------------------------------------------------------------------------------------------------|
| `SPC j j`          | Jump to given character(s) in any window of current frame - more characters narrow matches                             |
| `SPC j C`          | Jump to first unbalanced parens                                                                                        |
| `SPC j c` or `' '` | Jump to last change                                                                                                    |
| `m x` , `' x`      | Create marker called `x`, jump to marker called `x` (use any alphabet character) (see [markers section](markers.html)) |
| `#`                | Symbol highlight transient state - navigate symbol names, iedit, swoop                                                 |
| `/`                | Search in current buffer - `RTN` to confirm search pattern, `n/N` to navigate between matches                          |
| `SPC /`            | Search in project - use `C-j/k` to navigate in results                                                                 |




## Code Folding

Folding code hides away details, so you can just look at the function definitions and data structures of interest on the same screen.

| Keybindings | Description                                                 |
|-------------|-------------------------------------------------------------|
| `z` or `SPC z .`  | folding code blocks

`z` opens a menu to allow you to un/fold your code quickly.

[![Spacemacs Zoom menu](/images/spacemacs-vim-normal-z-menu.png)](/images/spacemacs-vim-normal-z-menu.png)

`SPC z .` is the code fold transient menu should you wish to un/fold code many times.

See the [code folding](/navigating-code/code-folding.html) section for more details.


## Structured Editing

`SPC k` - navigating structure (also see structural editing)

`hjkl` to navigate the cursor along the parens

![Spacemacs Structured Editing - Lisp state menu](/images/spacemacs-lisp-state-menu.png)
