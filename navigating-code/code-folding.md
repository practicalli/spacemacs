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


> ####Info::Code folding options
> Spacemacs uses evil folding by default and you can easily switch to use [origami](https://github.com/gregsexton/origami.el).  Origami adds a recursive open and close, and what it calls an org-mode header collapse (although these didnt seem to work on my Clojure code). Origami seems less useful for Clojure than evil-fold, as folding seems to only work at the top level.
>
> Edit your `.spacemacs` file and update `dotspacemacs-folding-method 'origami`.
>
>  Changing this setting will download the origami package, so I suggest restarting Emacs, `SPC q r`, rather than just reloading the configuration.
>
> If Origami allows you to [write your own parser](https://github.com/gregsexton/origami.el#does-it-support-my-favourite-major-mode) should you need to teach it a different way to folding your code.  The  website
>
> There is also [evil-vimish-fold](https://github.com/mrkkrp/vimish-fold/blob/master/vimish-fold.el) which some have commented to be really good for every language, however, I dont think this has been added to Spacemacs as a layer yet.    I could be doing something wrong, or the Clojure parser for origami needs tweeking.  I would love to see the argument list still shown when folding, as an example.
> To try the evil-vimish-fold package without a layer, you can add it to your `.spacemacs` file as follows
> 1) add the package name `evil-vimish-fold` to `dotspacemacs-additional-packages`
> 2) add `(evil-vimish-fold-mode 1)` to `user-config`
