# Refactor Code with Clojure LSP

The majority of refactor tools from Clojure LSP are code actions, providing context specific tools that are only available when relevant.


## Renaming

Symbols such as namespace names, function definitions, names bound to values and keywords can be renamed across a whole project

`, r r` to rename symbol at point

![Clojure LSP Refactor - Rename symbol](https://clojure-lsp.io/images/features/rename.gif)



## Code Actions

`, a a` opens the LSP code actions menu to provide context specific refactor tools

lsp-ui sidebar shows available code actions when enabled

```elisp
lsp-ui-sideline-enable t
lsp-ui-sideline-show-code-actions t
```

Clojure LSP features includes [examples of code actions](https://clojure-lsp.io/features/#code-actions).


### Converting Parens

Convert between literal hash-map `{}`, vector `[]`, set `#{}` and list `()` forms

![Clojure LSP Refactor - Convert between literal hash-map vector set and list forms](https://clojure-lsp.io/images/features/change-coll.gif)


## Add library namespace to current namespace

Add the suggested library to the ns namespace definition using a require form with an alias

![Clojure LSP refactor - require suggested library with an alias in the ns definition](https://clojure-lsp.io/images/features/add-alias-suggestion.gif)

Add import form for known Java methods and classes

![Clojure LSP refactor - add Java library import form](https://clojure-lsp.io/images/features/add-common-import.gif)


### Move to let binding

Move an expression to be a value of a new local name in an existing `let` form

![Clojure LSP refactor - move expression to new let binding name](https://clojure-lsp.io/images/features/move-to-let.gif)


Move a value to a new local name in an existing let binding (inline symbol)

![Clojure LSP refactor - inline symbol](https://clojure-lsp.io/images/features/inline-symbol.gif)


### Extract expression to new function

Create a new public function definition with the expression at point the body of that new function.

Replace the expression at point with a call to the new function with arguments extracted from the expression at point where relevant.

![Clojure LSP refactor - extract current expression to a new public function definition](https://clojure-lsp.io/images/features/extract-function.gif)


### Convert to thread macro

Convert (nested) expression to a thread first or thread last form

![Clojure LSP refactor - convert expression to thread macro](https://clojure-lsp.io/images/features/thread-first-all.gif)


### Convert function definition to private

![Clojure LSP refactor - convert function to private](https://clojure-lsp.io/images/features/create-private-function.gif)


### Toggle function form

Toggle between short and normal forms of a function definition

![Clojure LSP refactor - toggle function definition form between short and normal](https://clojure-lsp.io/images/features/cycle-fn-literal.gif)


## Re-order data structures

Move elements of a data structure using `lsp-clojure-coll-move-entry-up` and `lsp-clojure-coll-move-entry-up`, which have no key binding in Spacemacs by default (Doom Emacs uses Meta up/down arrow keys)

![Clojure LSP - move elements in data structures](https://clojure-lsp.io/images/features/move-coll-entry.gif)

> WARNING: does not seem to work and does not show as a code action
