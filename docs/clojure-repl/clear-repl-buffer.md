# Clear REPL Buffer

When large results are returned from Clojure code they can eventually cause a slow-down of Emacs. Clearing the REPL buffer can restore Emacs to its usual speedy self.

[Auto-trimming of the REPL buffer](https://docs.cider.mx/cider/repl/configuration.html#auto-trimming-the-repl-buffer) automatically deletes the oldest output, based on a given size.

!!! HINT "Use cider-inspector and Source Code buffers"
    `, d v` displays values in the `cider-inspector` allowing navigation of nested data structures and paging through large data sets. [Portal data navigation tool](http://practical.li/clojure/clojure-cli/data-browsers/portal.html) is an external tool that also provides navigation and paging of data as well as other data visualisation.

    Evaluation in a Clojure source code buffer are limited to 100 results so avoids potential slow-down from large results.  Use `, e p` menu to pretty print the results of evaluations in a temporary buffer.


## Clear the REPL buffer from any buffer

++comma++ ++"s"++ ++"l"++ to remove the output of the last evaluation from the REPL buffer, `spacemacs/cider-find-and-clear-repl-buffer`.

++comma++ ++"s"++ ++l++ clear all the output from the entire REPL session, `cider-find-and-clear-repl-output`.


## In the REPL buffer

++comma++ ++"s"++ ++"l"++ to switch to the REPL buffer

In Evil Insert mode use the ++comma++ menu to call commands to clear the REPL buffer:

`clear` to clear the whole buffer history

`clear-output` to clear the result of the last evaluation


## Configure auto-trimming

Auto-trimming is not enabled by default in CIDER, it must be set with a specific value.

Add the layer variable `cider-repl-buffer-size-limit` to have all Clojure projects auto-trim the REPL

```
     (clojure :variables
              clojure-enable-clj-refactor t
              clojure-enable-linters 'clj-kondo
              clojure-toplevel-inside-comment-form t
              cider-overlays-use-font-lock t
              cider-repl-buffer-size-limit 100)
```

Alternatively, add the `cider-repl-buffer-size-limit` to a `.dir-locals.el` to affect just one Clojure project

```elisp
((clojure-mode . ((cider-repl-buffer-size-limit . 100))))
```

> `revert-buffer` on a Clojure project to ensure Emacs has loaded the `.dir-locals.el`
