# Code folding

Code folding allows you to collapse a code block onto one line, allowing you to see more of your code in the window.  A code block for Clojure includes comments, `def`, `defn` and the threading macros `->` and `-->`.

!!! HINT "Overview of a namespace"
    ++"z"++ ++"m"++ shows just the names of all function definitions and vars in a namespace, providing a quick way to review all namespace api.

## Keybindings

| Evil state      | Description                                 |
|-----------------|---------------------------------------------|
| ++"z"++ ++"a"++ | Toggle fold for current code block          |
| ++"z"++ ++"c"++ | Folds a code block                          |
| ++"z"++ ++"m"++ | Folds all code  in buffer                   |
| ++"z"++ ++"o"++ | Opens current folded code block             |
| ++"z"++ ++o++   | Opens current folded code block recursively |
| ++"z"++ ++"r"++ | Opens all folded code blocks in the buffer  |


## Code Fold Transient State

++spc++ ++"z"++ opens a transient state for folding code, most useful when reviewing code.

![Spacemacs - Zoom - Code Fold transient state](/images/spacemacs-zoom-fold-transient-state.png)


# Code folding methods

There are two code folding methods, evil folding (the default) and [origami](https://github.com/gregsexton/origami.el){target=_blank}.  Evil fold is recommended for Clojure development.

Origami adds a recursive open and close and what it calls an org-mode header collapse (didn't seem to work on Clojure code). Origami seems less useful for Clojure than evil-fold, as folding seems to only work at the top level.

Origami allows you to [write your own parser](https://github.com/gregsexton/origami.el#does-it-support-my-favourite-major-mode){target=_blank} to teach different ways to fold code.  Origami is a great choice if you want to customise your code folding.


## Switching to origami code folding

++spc++ ++"f"++ ++"e"++ ++"d"++ to open the Spacemacs configuration file

++spc++ ++"s"++ ++"s"++ `dotspacemacs-folding-method` to find the code folding setting, ++enter++ to end the search.

Change the code folding method: `dotspacemacs-folding-method 'origami`

++spc++ ++"q"++ ++"r"++ to restarting Emacs and download the origami package.
