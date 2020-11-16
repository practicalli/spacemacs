# Clear REPL Buffer
Emacs has one weakness, the processing of large files, especially with very long lines.  When large results are returned from Clojure code they can eventually cause a slow-down of Emacs.

Rather than restart the REPL, clearing the REPL buffer can restore Emacs to its usual speedy self.

> #### Hint::Use cider-inspector and Source Code buffers
> `, d v` will show values in the `cider-inspector`, allowing navigation of nested data structures and paging through large data sets.  Or consider using the [Portal data navigation tool](http://practicalli.github.io/clojure/clojure-tools/data-browsers/portal.html).
>
> All evaluations in a Clojure source code buffer are limited to 100 results and do not add to the REPL buffer, so avoids any slow-down from large results.  Use `, e p` menu to pretty print the results of evaluations.

## Clear the REPL buffer from any buffer

`, s l`  to remove the output of the last evaluation from the REPL buffer, `spacemacs/cider-find-and-clear-repl-buffer`.

`, s L`  clear all the output from the entire REPL session, `cider-find-and-clear-repl-output`.


## In the REPL buffer
`, s a` to switch to the REPL buffer

In Evil Insert mode use the `,` menu to call commands to clear the REPL buffer:

`clear` to clear the whole buffer history

`clear-output` to clear the result of the last evaluation
