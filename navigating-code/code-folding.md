# Code folding

Code folding allows you to collapse a code block onto one line, allowing you to see more of your code in the window.  A code block for Clojure includes comments, `def`, `defn` and the threading macros `->` and `-->`.

> #### Hint::Overview of a namespace
> `z m` shows just the names of all function definitions and vars in a namespace, providing a quick way to review all namespace api.

## Keybindings

| Evil state | Description                                 |
|------------|---------------------------------------------|
| `z a`      | Toggle fold for current code block          |
| `z c`      | Folds a code block                          |
| `z m`      | Folds all code  in buffer             |
| `z o`      | Opens current folded code block             |
| `z O`      | Opens current folded code block recursively |
| `z r`      | Opens all folded code blocks in the buffer  |


## Code Fold Transient State

You can use a transient state for folding code via `SPC z .`, which seems to be most useful when reviewing code.

![Spacemacs - Zoom - Code Fold transient state](/images/spacemacs-zoom-fold-transient-state.png)
