# Spacemacs Comments

++meta++ ++comma++ creates a line comment on a new line or adds a comment at the end of an existing line.

++"g"++ ++"c"++ ++"c"++ toggles a line commend for the current line, ++"g"++ ++"c"++  to toggle the selected region.


## Spacemacs comment key bindings

Spacemacs uses the same keybindings and commands to comment any programming language or mode.  The character and style of comments is defined in each layer or package that layer includes.

If a mode does not have a comment character, Spacemacs will prompt for one in the mode line.

| Key binding               | Description                                      |
|---------------------------|--------------------------------------------------|
| `SPC ; ;`                 | Toggle comment current line                      |
| `SPC ; i i`               | Toggle comment current line indented             |
| `SPC ; p a`               | Toggle comment paragraph                         |
| `g c c`                   | Toggle comment current line                      |
| `g c a p`                 | Toggle comment selected paragraphs               |
| `g c SPC y`               | Comment up to a line with avy                    |
| `g y`                     | Paste a commented copy of the current line above |
| `v` _select region_ `g c` | Comment selected region                          |
| `M-;`  (any state)        | New comment line or add comment to end of line   |


!!! INFO "Evil-commentary layer"
    Spacemacs uses the [evil-commentary layer](https://github.com/syl20bnr/spacemacs/tree/develop/layers/%2Bvim/evil-commentary){target=_blank} to provide a commenting tool for all other layers.


## Clojure LSP snippets

Logical sections within a namespace aid navigation and understanding, as well as identifying opportunities to refactor a namespace as it grows in size.

`comment-header` and `comment-section` are Clojure LSP snippets defined in [practicalli/clojure-lsp-config](https://github.com/practicalli/clojure-lsp-config){target=_blank}

`comment-header` provides a comment block to describe the overall purpose of the namespace

`comment-section` provides a comment block to demarcate sections of the namespace, such as helper functions, state, system, etc.  Sections help identify groups of code that could be organised into their own namespace as the code grows.


## Clojure comments

[Clojure uses line comments, the comment function and the `#_` reader macro](https://practical.li/clojure/reference/clojure-syntax/comments.html "Practicalli Clojure: Comments"){target=_blank}.


## Evaluating forms in Rich comments

Expressions contained within a `(comment ,,,)` form are not evaluated when a namespace is evaluated, i.e. `, e b` to evaluate the current buffer.  So its a useful form for code only evaluated directly by the developer.

Setting `clojure-toplevel-inside-comment-form` to true in the Clojure layer enables expressions to be evaluated within the `(comment ,,,)` form using the usual evaluation commands, (i.e. `, e f`).

```elisp
(clojure :variables clojure-toplevel-inside-comment-form t)
```


```clojure
(comment
  ;; Stop / restart application server
  (app-server-start 8888)
  (app-server-restart 8888)
  (app-server-stop)

  ;; OS environment variables / Java properties
  (System/getenv "PORT")
  (System/getProperties)
  )
```

> Example rich comment from [Banking on Clojure project](https://practical.li/clojure-web-services/projects/banking-on-clojure/application-server-configuration.html#repl-driven-development-helpers){target=_blank} in [Practicalli Clojure Web Services](https://practical.li/clojure-web-services/projects/banking-on-clojure/application-server-configuration.html#repl-driven-development-helpers){target=_blank}
