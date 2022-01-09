# Evil Cleverparens safe structural editing

[With `evil-cleverparens` enabled](/install-spacemacs/evil-structural-editing.md), editing in Evil Normal state respects the structure of your code.

| Spacemacs   | Evil    | Description                                                |
|-------------|---------|------------------------------------------------------------|
| `SPC m T s` | `, T s` | Enable evil safe structural editing for the current buffer |

Default safe structural editing for all major modes by adding the following to `dotspacemacs/user-config` in `.spacemacs` or `.spacemacs.d/init.el`

```elisp
  (spacemacs/toggle-evil-safe-lisp-structural-editing-on-register-hooks)
  ;; for clojure layer only (comment out line above)
  ;; (spacemacs/toggle-evil-safe-lisp-structural-editing-on-register-hook-clojure-mode)
```


## Evil normal editing

Evil-cleverparens modifies some of the existing behaviour of Evil keybindings.  It also adds some extra keybindings that use forms as a text object.

| Keybinding | Description                                                           |
|------------|-----------------------------------------------------------------------|
| `d d`      | deletes the current line, moving closing parens to live above         |
| `D`        | deletes from point to end of line, keeping closing parens             |
| `H`        | Move backward by sexp                                                 |
| `L`        | Move forward by sexp                                                  |
| `M-a`      | Append at end of current form (insert)                                |
| `M-i`      | Insert at start of current form (insert)                              |
| `M-h`      | Move to the beginning of a top-level form                             |
| `M-l`      | Move to the end of the top-level form                                 |
| `M-O`      | New line before current form (insert)                                 |
| `M-o`      | New line after current form (insert)                                  |
| `x`        | if point on parens, unwrap expression, else delete character at point |
| `_`        | jump point to the first non-blank non-opening paren                   |


## Slurping and Barfing

`<` and `>` to slurp and barf, both forwards and backwards depending on cursor location

On an open delimiter, `(`, `[`, `{`

* `<` *slurp backwards* as many times as there are preceding opening delimiters.
* `<` *barf forwards* unless form contains a single sexp

On a closing delimiter, `)`, `]`, `}`

* `>` *slurp forwards* as many times as there are closing delimiters behind
* `>` *barf backwards* unless form contains a single sexp

When inside a form `<` will *barf* and `>` will *slurp* *forwards*.


## Wrapping

| Key   | Behaviour                       |
|-------|---------------------------------|
| `M-(` | Wrap next sexp in `()`          |
| `M-)` | Wrap the previous sexp in  `()` |
| `M-[` | Wrap the next sexp in `[]`      |
| `M-]` | Wrap the previous sexp in  `[]` |
| `M-{` | Wrap the next sexp in `{}`      |
| `M-}` | Wrap the previous sexp in `{}`  |

Start with a numeric argument to operate on multiple s-expressions until the end of the surrounding form.

`SPC-u` (universal argument) acts on the surrounding form instead. Each consecutive `SPC-u` wraps an additional expression from the surrounding form.


## Navigating via parens

Evil-cleverparens has some convenient keybindings for jumping around code using the parens, including double quotes.

| Key | Description                              |
|-----|------------------------------------------|
| `(` | Move backward up a sexp.                 |
| `)` | Move forward up a sexp.                  |
| `[` | Move to the previous opening parentheses |
| `]` | Move to the next closing parentheses     |
| `{` | Move to the next opening parentheses     |
| `}` | Move to the previous closing parentheses |


## Dragging / Transposing

Drag the expression under point forward or backward.

`M-j` `evil-drag-forward` drag expression forward

`M-k` `evil-drag-backward`  drag expression backward

The depth of the expression being moved never changes, i.e. dragging is distinct from slurping or barfing.

The expression affected is dependent on the location of the cursor:

- On top of a symbol acts on that symbol.
- Inside or on the delimiters of a form moves the form.
- If a symbol or a form can't be moved any further, the command acts on its surrounding form.
- Outside a form on a safe line will move the line.
- On a top-level comment will move the entire comment-block.

The behavior of the command with respect to top-level sexps and lines can be customized with

`evil-cleverparens-drag-ignore-lines` (default `nil`)

`evil-cleverparens-drag-comment-blocks` to `nil` treats connected commented lines as singular units


## Copy and Paste

`M-w` aka `evil-cp-evil-copy-paste-form` copies the surrounding form and inserts it below with the proper indentation.

Call outside a form it will do the same with the current line instead (as long as its safe).

Call with a numeric argument to repeat the paste operation multiple times.

Call with `SPC-u` copy-paste the current top-level form and insert newlines between them.


### From Smartparens

The following commands have been lifted straight from `smartparens`:

| Key   | Behavior            |
|-------|---------------------|
| `M-q` | `sp-indent-defun`   |
| `M-J` | `sp-join-sexp`      |
| `M-s` | `sp-splice-sexp`    |
| `M-S` | `sp-split-sexp`     |
| `M-t` | `sp-transpose-sexp` |
| `M-v` | `sp-convolute-sexp` |
| `M-r` | `sp-raise-sexp`     |

`M-R` bound to `evil-cp-raise-form` acts like `sp-raise-sexp` but on the enclosing form instead of the next one.
