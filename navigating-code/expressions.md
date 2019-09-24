# Navigating Expressions

> #### TODO::work in progress, sorry

Jumping between expression boundaries, parentheses, espcially with nested expressions is an effective way to navigate your Clojure code

`SPC k .` enters [Lisp State](../structured-editing/lisp-state.html) transient state.  `hjkl` will now navigate on expression boundaries.  `S-hjkl` will navigate as the usual Evil movement.


> TODO: Video of jumping around


## Jumping around

Avvy Jump ?




## Emacs keybinding

| Emacs     | Command           | Description                                                           |
|-----------|-------------------|-----------------------------------------------------------------------|
| `C-M-a`   | backward-sentence | Jump to start or previous sentence (expression or comment)            |
| `C-M-e`   | forward-sentence  | Jump to end of or next sentence (expression or comment)               |
| `C-M-n`   | forward-list      | Move forward over a parenthetical group                               |
| `C-M-p`   | backward-list     | Move backward over a parenthetical group                              |
| `C-M-f`   | forward-sexp      | Move forward over a balanced expression                               |
| `C-M-b`   | backward-sexp     | Move backward over a balanced expression                              |
| `C-k`     |                   | Kill to end of line (kill to end of expression in smartparens strict) |
| `C-M-k`   | kill-sexp         | Kill balanced expression forward                                      |
| `C-M-SPC` | mark-sexp         | Put the mark at the end of the sexp                                   |


## Reference

* [Emacs Wiik: Navigating Parentheses](https://www.emacswiki.org/emacs/NavigatingParentheses)
