# Lisp State

> The lisp state commands are provided by the [Evil Lisp State](https://github.com/syl20bnr/evil-lisp-state) package.

Lisp state provides and Evil mode for structural editing Clojure code and for other lisps too.  This mode provides a fast an convienient way to manipulate the structure of your Clojure whist keeping it valid, i.e. avoiding unbalanced parenthesis.

> ####Hint::
> Once in __Lisp State__ you do not need to use `SPC k`, just the single character keybings.

The common lisp state commands I use are

| Lisp state `SPC k` | Description                                                          |
|--------------------|----------------------------------------------------------------------|
| `s` /  `S`         | slurp forward / backward (pull in code from the right / left)        |
| `b` / `B`          | barf forward / backward (push out code to the right / left)          |
| `d s`              | delete symbol                                                        |
| `d w`              | delete word                                                |
| `d x`              | delete expression                                                    |
| `r`                | raise expression - replace parent expression with current expression |



## Using Lisp State

In a buffer containing a Clojure file, open the **lisp-state** using `SPC k .`

In Lisp state the window number has a pink background.

> ####Hint:: `SPC` does not activate Spacemacs menu
> In **lisp-state** the leader key, `SPC`, is not bound to the Spacemacs menu.  However, you can use the holy mode binding, `M-m`, to open the Spacemacs menu.

I am still learning lisp state myself, so in the mean time here is an interesting video from [Spacemacs ABC](https://youtu.be/ZFV5EqpZ6_s?list=PLrJ2YN5y27KLhd3yNs2dR8_inqtEiEweE)

<p align="center">
<iframe width="560" height="315" src="https://www.youtube.com/embed/fYsqaAL8HSU?ecver=1" frameborder="0" allowfullscreen></iframe>
</p>


## Moving around

| lisp-state | Description                        |
|------------|------------------------------------|
| `j`        | Next closing delimiter parenthesis |
| `k`        | Previous opening parenthesis       |
| `h`        | Backward symbol                    |
| `H`        | Backward sexp                      |
| `l`        | Forward symbol                     |
| `L`        | Forward sexp                       |


## Lisp State Commands

Adds a new [evil][evil-link]state to navigate lisp code and edit sexp trees using mnemonic key bindings.

To execute a command while in normal state, a leader key is used.  By default any command when executed sets the current state to `lisp state`.

Examples:

- to slurp three times while in normal state:

    `SPC k` 3 s

- to wrap a symbol in parenthesis then slurping two times:

    `SPC k` w 2 s


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


## Manual Configuration (optional)

Spacemacs  binding comes with the package, you have to explicitly
bind the lisp state to a key with the function `evil-lisp-state-leader`
For instance:

```elisp
(evil-lisp-state-leader ", SPC k")
```

Key bindings are set only for `emacs-lisp-mode` by default. It is possible to
add major modes with the variable `evil-lisp-state-major-modes'.

It is also possible to define the key bindings globally by setting
`evil-lisp-state-global` to `t`. In this case `evil-lisp-state-major-modes' has no
effect.

If you don't want commands to enter in `lisp state` by default set the variable
`evil-lisp-state-enter-lisp-state-on-command` to `nil`. `SPC k .` will be the only keybinding to switch to lisp state.

* [evil-link]: https://gitorious.org/evil/pages/Home
* [smartparens-link]: https://github.com/Fuco1/smartparens/wiki
* [melpa-link]: http://melpa.org/
