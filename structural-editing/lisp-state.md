# Lisp State

[Lisp state](https://develop.spacemacs.org/layers/+spacemacs/spacemacs-evil/README.html) provides a fast an convenient way to manipulate the structure of your Clojure whist keeping it valid, i.e. avoiding unbalanced parenthesis.

`SPC k` opens the lisp state menu, providing commands for structural editing with Smartparens.  Any command will put the current buffer into lisp state, a transient state where you can use single character keybindings for the commands (no need to use `SPC k` each time).

Evil numeric values can be used with the Lisp state commands

`3 s` slurp three times

`w 2 s` wrap a symbol in parenthesis then slurp two times


## Common commands

| Lisp state `SPC k`    | Description                                                          |
|-----------------------|----------------------------------------------------------------------|
| `j` /  `k`            | next close paren / previous open paren                               |
| `l` /  `h`            | next symbol / previous symbol                                        |
| `L` /  `H`            | next expression / previous expression                                |
| `s` /  `S`            | slurp forward / backward (pull in code from the right / left)        |
| `b` / `B`             | barf forward / backward (push out code to the right / left)          |
| `d s` / `d w` / `d x` | delete symbol / word / expression                                    |
| `r`                   | raise expression - replace parent expression with current expression |

This section provides further examples of the most common lisp state commands.  The [Spacemacs ABC](https://youtu.be/fYsqaAL8HSU?t=710) video also covers examples of Lisp State.


> #### TODO::TODO: Video of Structural editing with Lisp State

## Key Bindings

| Key Binding | Function                                                           |
|-------------|--------------------------------------------------------------------|
| `SPC k %`   | evil jump item                                                     |
| `SPC k :`   | ex command                                                         |
| `SPC k (`   | insert expression before (same level as current one)               |
| `SPC k )`   | insert expression after (same level as current one)                |
| `SPC k $`   | go to the end of current sexp                                      |
| `SPC k 0`   | go to the beginning of current sexp                                |
| `SPC k a`   | absorb expression                                                  |
| `SPC k b`   | forward barf expression                                            |
| `SPC k B`   | backward barf expression                                           |
| `SPC k c`   | convolute expression                                               |
| `SPC k ds`  | delete symbol                                                      |
| `SPC k Ds`  | backward delete symbol                                             |
| `SPC k dw`  | delete word                                                        |
| `SPC k Dw`  | backward delete word                                               |
| `SPC k dx`  | delete expression                                                  |
| `SPC k Dx`  | backward delete expression                                         |
| `SPC k e`   | unwrap current expression and kill all symbols after point         |
| `SPC k E`   | unwrap current expression and kill all symbols before point        |
| `SPC k h`   | previous symbol                                                    |
| `SPC k H`   | go to previous sexp                                                |
| `SPC k i`   | switch to `insert state`                                           |
| `SPC k I`   | go to beginning of current expression and switch to `insert state` |
| `SPC k j`   | next closing parenthesis                                           |
| `SPC k J`   | join expression                                                    |
| `SPC k k`   | previous opening parenthesis                                       |
| `SPC k l`   | next symbol                                                        |
| `SPC k L`   | go to next sexp                                                    |
| `SPC k p`   | paste after                                                        |
| `SPC k P`   | paste before                                                       |
| `SPC k r`   | raise expression (replace parent expression by current one)        |
| `SPC k s`   | forward slurp expression                                           |
| `SPC k S`   | backward slurp expression                                          |
| `SPC k t`   | transpose expression                                               |
| `SPC k u`   | undo                                                               |
| `SPC k U`   | got to parent sexp backward                                        |
| `SPC k C-r` | redo                                                               |
| `SPC k v`   | switch to =visual state=                                           |
| `SPC k V`   | switch to =visual line state=                                      |
| `SPC k C-v` | switch to =visual block state=                                     |
| `SPC k w`   | wrap expression with parenthesis                                   |
| `SPC k W`   | unwrap expression                                                  |
| `SPC k y`   | copy expression                                                    |

> ####Hint:: `SPC` does not activate Spacemacs menu
> In **lisp-state** the Spacemacs leader key, `SPC`, is not bound to the Spacemacs menu.  `M-m` can be used to open the Spacemacs menu.


## References
* [evil-lisp-state](https://github.com/syl20bnr/evil-lisp-state) and [keybindings](https://github.com/syl20bnr/evil-lisp-state#key-bindings)
* [smartparens-link]: https://github.com/Fuco1/smartparens/wiki
