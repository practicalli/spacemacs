# Lisp State Commands


> The lisp state commands are provided by the [Evil Lisp State](https://github.com/syl20bnr/evil-lisp-state) package.


When you are in **Lisp State** you do not need to use the leader key, you can use the character commands directly.


## From that package readme....



# evil-lisp-state
[![MELPA](http://melpa.org/packages/evil-lisp-state-badge.svg)](http://melpa.org/#/evil-lisp-state)

Adds a new [evil][evil-link] state to navigate lisp code and edit sexp trees
using mnemonic key bindings.

<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc/generate-toc again -->
**Table of Contents**

- [evil-lisp-state](#evil-lisp-state)
    - [Install](#install)
        - [Package manager](#package-manager)
        - [Manually](#manually)
    - [Principle](#principle)
    - [Commands and key bindings](#commands-and-key-bindings)
    - [Configuration](#configuration)

<!-- markdown-toc end -->

## Install

### Package manager

You can either install `evil-lisp-state` from [MELPA][melpa-link]:

```
 M-x package-install evil-lisp-state
```

Or add it to your `Cask` file:

```elisp
(source melpa)

(depends-on "evil-lisp-state")
```

### Manually

Add `evil-lisp-state.el` to your load path. `evil-lisp-state` requires
both `evil`, `bind-map` and `smartparens` to be installed.

## Principle

To execute a command while in normal state, a leader key is used.
The leader has to be defined with the function `evil-lisp-state-leader`.
By default any command when executed sets the current state to `lisp state`.

Examples:

- to slurp three times while in normal state:

    <leader> 3 s

- to wrap a symbol in parenthesis then slurping two times:

    <leader> w 2 s

## Key Bindings

Key Binding               | Function
--------------------------|------------------------------------------------------------
<kbd>\<leader\> .</kbd>   | switch to `lisp state`
<kbd>\<leader\> %</kbd>   | evil jump item
<kbd>\<leader\> :</kbd>   | ex command
<kbd>\<leader\> (</kbd>   | insert expression before (same level as current one)
<kbd>\<leader\> )</kbd>   | insert expression after (same level as current one)
<kbd>\<leader\> $</kbd>   | go to the end of current sexp
<kbd>\<leader\> ` k</kbd> | hybrid version of kill sexp (can be used in non lisp dialects)
<kbd>\<leader\> ` p</kbd> | hybrid version of push sexp (can be used in non lisp dialects)
<kbd>\<leader\> ` s</kbd> | hybrid version of slurp sexp (can be used in non lisp dialects)
<kbd>\<leader\> ` t</kbd> | hybrid version of transpose sexp (can be used in non lisp dialects)
<kbd>\<leader\> 0</kbd>   | go to the beginning of current sexp
<kbd>\<leader\> a</kbd>   | absorb expression
<kbd>\<leader\> b</kbd>   | forward barf expression
<kbd>\<leader\> B</kbd>   | backward barf expression
<kbd>\<leader\> c</kbd>   | convolute expression
<kbd>\<leader\> ds</kbd>  | delete symbol
<kbd>\<leader\> Ds</kbd>  | backward delete symbol
<kbd>\<leader\> dw</kbd>  | delete word
<kbd>\<leader\> Dw</kbd>  | backward delete word
<kbd>\<leader\> dx</kbd>  | delete expression
<kbd>\<leader\> Dx</kbd>  | backward delete expression
<kbd>\<leader\> e</kbd>   | unwrap current expression and kill all symbols after point
<kbd>\<leader\> E</kbd>   | unwrap current expression and kill all symbols before point
<kbd>\<leader\> h</kbd>   | previous symbol
<kbd>\<leader\> H</kbd>   | go to previous sexp
<kbd>\<leader\> i</kbd>   | switch to `insert state`
<kbd>\<leader\> I</kbd>   | go to beginning of current expression and switch to `insert state`
<kbd>\<leader\> j</kbd>   | next closing parenthesis
<kbd>\<leader\> J</kbd>   | join expression
<kbd>\<leader\> k</kbd>   | previous opening parenthesis
<kbd>\<leader\> l</kbd>   | next symbol
<kbd>\<leader\> L</kbd>   | go to next sexp
<kbd>\<leader\> p</kbd>   | paste after
<kbd>\<leader\> P</kbd>   | paste before
<kbd>\<leader\> r</kbd>   | raise expression (replace parent expression by current one)
<kbd>\<leader\> s</kbd>   | forwared slurp expression
<kbd>\<leader\> S</kbd>   | backward slurp expression
<kbd>\<leader\> t</kbd>   | transpose expression
<kbd>\<leader\> u</kbd>   | undo
<kbd>\<leader\> U</kbd>   | got to parent sexp backward
<kbd>\<leader\> C-r</kbd> | redo
<kbd>\<leader\> v</kbd>   | switch to `visual state`
<kbd>\<leader\> V</kbd>   | switch to `visual line state`
<kbd>\<leader\> C-v</kbd> | switch to `visual block state`
<kbd>\<leader\> w</kbd>   | wrap expression with parenthesis
<kbd>\<leader\> W</kbd>   | unwrap expression
<kbd>\<leader\> y</kbd>   | copy expression

## Configuration

No default binding comes with the package, you have to explicitly
bind the lisp state to a key with the function `evil-lisp-state-leader`
For instance:

```elisp
(evil-lisp-state-leader ", l")
```

Key bindings are set only for `emacs-lisp-mode` by default. It is possible to
add major modes with the variable `evil-lisp-state-major-modes'.

It is also possible to define the key bindings globally by setting
`evil-lisp-state-global` to t. In this case `evil-lisp-state-major-modes' has no
effect.

If you don't want commands to enter in `lisp state` by default set the variable
`evil-lisp-state-enter-lisp-state-on-command` to nil. Then use the
<kbd><leader> .</kbd> to enter manually in `lisp state`

[evil-link]: https://gitorious.org/evil/pages/Home
[smartparens-link]: https://github.com/Fuco1/smartparens/wiki
[melpa-link]: http://melpa.org/



