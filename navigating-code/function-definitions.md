# Navigating to function definitions


## Cider

> #### TODO::

## Evil normal State

`g d` in Evil normal state jumps to the definition of the name under the cursor, `g D` to open the definition in another window

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
