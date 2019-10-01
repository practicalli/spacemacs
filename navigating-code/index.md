# Navigating code

Rather than use the arrow keys to move character by character or line by line, Spacemacs enables you to move around much quicker

## General Tools

Use Evil normal mode to quickly jump around your code.

| Keybindings | Description                                                                                                            |
|-------------|------------------------------------------------------------------------------------------------------------------------|
| `SPC j j`   | Jump to given character(s) in any window of current frame - more characters narrow matches                             |
| `SPC j c`   | Jump to last change                                                                                                    |
| `SPC j C`   | Jump to first unbalanced parens                                                                                        |
| `/`         | Search in current buffer - use `n/N` to navigate between matches                                                       |
| `SPC /`     | Search in project - use `C-j/k` to navigate in results                                                                 |
| `#`         | Symbol highlight transient state - navigate symbol names, iedit, swoop                                                 |
| `m x` , `' x` | Create marker called `x`, jump to marker called `x` (use any alphabet character) (see [markers section](markers.html)) |

> #### Hint::Arrow keys considered unproductive
> Vim style encourages your hands to stay pretty static on the keyboard, with your fingers able to reach all the important keybindings. So using arrow keys is a sure sign that you have not yet learnt vim style editing (please keep trying, it is worth it)


## Navigating to function definitions

`g d` in Evil normal state will jump to the definition of the name under the cursor (`g D` opens the found definition in another window)

`SPC j i` will list matching functions of the name under the cursor, in the current buffer.

`, g g` will jump to the definition of the function name under the cursor anywhere in the project.  If no definition is found, you are prompted for a function name.  If the REPL is running, this will call `cider-find-var` (which may need a function definition to be evaluated) otherwise it will call `dumb-jump-go` and look for any matching definitions in the project.

`' '` will jump back to the point in the code where you originally jumped from.

> #### Hint::`dumb-jump` works after recompile
> `SPC SPC dumb-jump-go` is a great way to jump to a function definition.  It currently needs fixing first in Spacemacs.

> Delete the `dumb-jump.elc` file in `$HOME/.emacs.d/elpa/{emacs-version}/develop/dumb-jump-{package-version}/`.
> `SPC SPC spacemacs/recompile-elpa`
> `SPC SPC dumb-jump-mode` to enable dumb-jump
> `SPC SPC dumb-jump-go` will jump to the definition that matches the name under the cursor.  If there are multiple matches, a helm popup appears allowing you to select.
> `SPC SPC dumb-jump-back` to jump back to the file and position from where you came from (or `''`)


## Code Folding

Folding code hides away details, so you can just look at the function definitions and data structures of interest on the same screen.

| Keybindings | Description                                                 |
|-------------|-------------------------------------------------------------|
| `z` and `SPC z .` | folding code blocks

`z` opens a menu to allow you to un/fold your code quickly.

[![Spacemacs Zoom menu](/images/spacemacs-vim-normal-z-menu.png)](/images/spacemacs-vim-normal-z-menu.png)

`SPC z .` is the code fold transient menu should you wish to un/fold code many times.

See the [code folding](/navigating-code/code-folding.html) section for more details.


## Structured Editing

`SPC k` - navigating structure (also see structural editing)

`hjkl` to navigate the cursor along the parens

![Spacemacs Structured Editing - Lisp state menu](/images/spacemacs-lisp-state-menu.png)
