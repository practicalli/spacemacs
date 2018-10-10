# Evaluating Clojure

Your Clojure code can be evaluated in the REPL buffer or in the code buffer itself.

Some common workflows are to write code in the clojure buffer and then either:

* Evaluate expressions in the clojure code buffer (results inline)
* Evaluate expressions in the clojure code buffer and send to REPL buffer
* Evaluate expressions in the REPL buffer
* Live evaluation with Enlighten mode

This section will give examples of these common workflows.

> ####HINT::
> I prefer to evaluate in the code buffer.  I also have a section at the bottom of the file for REPL experiment code.

## Quick reference

The evaluation menu for Clojure is available via `, e` or `M-RET e`.

![Spacemacs - Clojure - Evaluate menu](/images/spacemacs-clojure-evaluate-menu.png)

Evaluation commands for Clojure are:

| Vim Normal | Major mode  | Description                                                       |
|------------|-------------|-------------------------------------------------------------------|
| `, e b`    | `M-RET e b` | Evaluate all the code in the current buffer                       |
| `, e r`    | `M-RET e r` | Evaluate code within the highlighted region                       |
| `, e e`    | `M-RET e e` | Evaluate the previous expression and print the result             |
| `, e f`    | `M-RET e f` | Evaluate the current expression and print the result              |
| `, e ;`    |             | Evaluate the current expression and print the result as a comment |
| `, e P`    |             | Open a new buffer and print the result of the previous expression |
| `, T e`     | `M-RET T e`  | Toggle CIDER Enlighten mode, showing intermediate values      |


> ####HINT::Displaying large results
> If the evaluation of a function or symbol returns a large result, eg. a large map, then use `cider-pprint-eval-last-sexp` to show the result in a separate buffer.
>
> `, e P`
