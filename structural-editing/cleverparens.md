# Evil Cleverparens

[With `evil-cleverparens` enabled](/install-spacemacs/evil-structural-editing.html), editing in Evil Normal state respects the structure of your code.

| Spacemacs   | Evil     | Description                                                |
|-------------|---------|------------------------------------------------------------|
| `SPC m T s` | `, T s` | Enable evil safe structural editing for the current buffer |


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
| `_`        | jump point to the first non-blank non-opening paren        |


## Navigating via parens

Evil-cleverparens has some convienient keybindings for jumping around code using the parens, including double quotes.

| Keybinding | Description                                                   |
|------------|---------------------------------------------------------------|
| `(`        | Move backward up a sexp.                                      |
| `)`        | Move forward up a sexp.                                       |
| `[`        | Move to the previous opening parentheses                      |
| `]`        | Move to the next closing parentheses                          |
| `{`        | Move to the next opening parentheses                          |
| `}`        | Move to the previous closing parentheses                      |


---

> #### TODO::work in progress, sorry
> The following content is still work in progress

#### Dragging / Transposing

In addition to regular transpose, bound to `M-t` (`sp-transpose-sexp`), `evil-cleverparens` provides additional means of moving sexps around with behavior inspired by the [drag-stuff-el](https://github.com/rejeep/drag-stuff.el) mode. `evil-drag-forward` bound to `M-j` and `evil-drag-backward` bound to `M-k` attempt to drag the *thing* under point forward or backward. The depth of the thing being moved never changes, i.e. dragging is distinct from slurping or barfing.

The *thing* can be many different things depending on the location of the cursor:

- On top of a symbol acts on that symbol.
- Inside or on the delimiters of a form moves the form.
- If a symbol or a form can't be moved any further, the command acts on its surrounding form.
- Outside a form on a safe line will move the line.
- On a top-level comment will move the entire comment-block.

The behavior of the command with respect to top-level sexps and lines can be customized with `evil-cleverparens-drag-ignore-lines` (default `nil`). You can also choose not to treat connected commented lines as singular units by setting `evil-cleverparens-drag-comment-blocks` to `nil`.

#### Slurping and Barfing

`evil-cleverparens` implements slurping and barfing both forwards and backwards using only the `<` and `>` keys by making them act differently when on top of a form delimiter:

- On an opening delimiter `<` will *slurp backwards* as many times as there are preceding opening delimiters.
- On a closing delimiter `<` will *barf forwards*. If the form contains only a single sexp inside it then `evil-cleverparens` will question your intention and instead do nothing. Perhaps you meant to *splice* or *delete* instead?
- On a opening delimiter `>` will *barf backwards* with the same caveat as above.
- On a closing delimiter `>` will *slurp forwards* as many times as there are closing delimiters behind.
- When inside a form `<` will *barf* and `>` will *slurp* *forwards*.

While the specifics of the dragging, slurping and barfing behavior may seem complicated when spelled out, a lot of thought has been put to make their use feel intuitive and fluid.

#### Wrapping

While `evil-cleverparens` editing operations work well with [evil-surround](https://github.com/timcharper/evil-surround), the following specialized wrapping commands are also provided:

| Key   | Behavior                                     |
|-------|----------------------------------------------|
| `M-(` | Wrap the next sexp in round parentheses.     |
| `M-)` | Wrap the previous sexp in round parentheses. |
| `M-[` | Wrap the next sexp in square brackets.       |
| `M-]` | Wrap the previous sexp in square brackets.   |
| `M-{` | Wrap the next sexp in curly braces.          |
| `M-}` | Wrap the previous sexp in curly braces.      |

Each command can take a numeric argument to determine how many sexps to operate on maxing out at the number of sexps from the cursor until the end of the surrounding form. When called with the `universal-argument`, the operations act on the surrounding form instead. The universal argument can be called multiple times, where each consecutive call will wrap an additional expression from the surrounding form.

#### Copy and Paste

`M-w` aka `evil-cp-evil-copy-paste-form` will copy the surrounding form and insert it below with the proper indentation. If called outside a form it will do the same with the current line instead (as long as its safe). This command can be called with a numeric argument to repeat the paste operation that many times. Calling it with the `universal-argument` will copy-paste the current top-level form and insert newlines between them.

#### From Smartparens

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
