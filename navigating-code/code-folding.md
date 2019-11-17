# Code folding

Code folding allows you to collapse a code block onto one line, allowing you to see more of your code in the window.  A code block for Clojure includes **def**, **defn** and the threading macros **->** and **-->**.

> **FIXME** TODO: Add a video of Code folding in action

## Code Fold Transient State

You can use a transient state for folding code via `SPC z .`, which seems to be most useful when reviewing code.

![Spacemacs - Zoom - Code Fold transient state](/images/spacemacs-zoom-fold-transient-state.png)

## Evil Normal state

When actively developing or refactoring code, the Vim normal state has code folding commands via the `z` key as follows

| Evil state  | Command            | Description                        |
|-------------|--------------------|------------------------------------|
| `z c`       | `evil-close-fold`  | Folds a code block                 |
| `z o`       | `evil-open-fold`   | Opens a folded code block          |
| `z a`       | `evil-toggle-fold` | Toggle fold for current code block |
| `z r`       | `evil-open-folds`  | Opens all folded code blocs        |
| `z m`       | `evil-close-folds` | Folds all code blocks in buffer    |


[![Spacemacs Zoom menu](/images/spacemacs-vim-normal-z-menu.png)](/images/spacemacs-vim-normal-z-menu.png)


## Code folding methods

There are two code folding methods, evil folding (the default) and [origami](https://github.com/gregsexton/origami.el).  Evil fold is recommended for Clojure development.

Origami adds a recursive open and close and what it calls an org-mode header collapse (although these didnt seem to work on my Clojure code). Origami seems less useful for Clojure than evil-fold, as folding seems to only work at the top level.

Origami allows you to [write your own parser](https://github.com/gregsexton/origami.el#does-it-support-my-favourite-major-mode) to teach different ways to fold code.  Origami is a great choice if you want to customise your code folding.


### Switching to origami code folding

`SPC f e d` to open the `.spacemacs` file

`/ dotspacemacs-folding-method` to find the code folding setting, `RTN` to end the search.

Change the code folding method: `dotspacemacs-folding-method 'origami`

`SPC q r` to restarting Emacs and download the origami package.
