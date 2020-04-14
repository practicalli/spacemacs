# Evaluate in the REPL Buffer
If you are used to working directly in the REPL, then you can easily open and work in a REPL buffer.  You will need a Clojure project open and must have started a REPL.

`, s s` toggles between the REPL buffer and a source code buffer.  The REPL buffer will be shown in a new window if it is not currently being displayed.

> #### TODO::TODO:Add screencast for this whole section


## Change REPL buffer namespace
`user` is the default namespace of the REPL.  This namespace includes the `doc` and `source` functions from `clojure.repl`.  This namespace is different to that of your project, so you will need to change the namespace of the REPL before calling any code in a project.

`, s n` from the source code buffer will change the REPL namespace to the same as the source code namespace.

The REPL prompt should now show the namespace you have changed into.


## Using the REPL buffer to evaluate
`i` for Evil insert state to use the REPL buffer.

Type in expressions at the REPL prompt and press `RET` to evaluate them.

`C-<up-arrow>` will scroll backwards through the history of expressions entered in the REPL buffer. `C-<down-arrow>` scrolls forward through the history.


> #### Hint::Scrolling in Evil normal state
> `C-k` and `C-j` will scroll backwards and forwards respectively through the REPL expression history, when you are in Evil normal state.


## Send expressions to the REPL buffer
`, s f` will send the current expression to the REPL to be evaluated.


![Spacemacs - Clojure - Send expressions to REPL](/images/spacemacs-clojure-cider-send-expression-to-repl.png)

To call a function, it must be in the namespace the REPL is currently set to.  Or you can send a function definition to the REPL before and then you are able to call that function.

`, s f` will send the current function definition to the REPL.  Then you can either call that function from the REPL buffer or use `, e f` to send an expression that calls the function to the REPL buffer.

![Spacemacs - Clojure - Send function definition then function call to REPL](/images/spacemacs-clojure-cider-send-to-repl-namespace-user.png)


## Changing the namespace in the REPL buffer
The `in-ns` function will change the REPL namespace to that specified in its argument.  For example:

`(in-ns 'spacemacs-workshop.core)` in the REPL buffer will change to the `spacemacs-workshop.core` namespace.

![Spacemacs - Clojure REPL - Change to `spacemacs-workshop.core`](/images/spacemacs-clojure-repl-change-namespace-spacemacs-workshop.png)


## REPL Buffer shortcut menu
`.` at the start of a line in Evil Insert state will open a list of command shortcuts for the REPL.

![Spacemacs - Clojure REPL - shortcut menu](/images/spacemacs-cider-repl-command-shortcuts.png)


### Clojure send to REPL menu
![Spacemacs Clojure REPL send to menu](/images/spacemacs-clojure-repl-send-to-menu.png)


### Clojure send to REPL - quit sub menu
![Spacemacs Clojure REPL send to menu](/images/spacemacs-clojure-repl-send-to-menu-quit.png)

> #### Hint:: Clojure REPL tools
> `, s u` adds the REPL utility functions
> `apropos`, `dir`, `dir-fn`, `doc`, `find-doc` and `source` into the current REPL namespace.
>
> These REPL utility functions are included in the `user` namespace by default.
> See the [`clojure.repl` api documentation](https://clojure.github.io/clojure/clojure.repl-api.html) for full details
