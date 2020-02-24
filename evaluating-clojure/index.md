# Evaluating Clojure

Spacemacs encourages you to evaluate Clojure expressions in the source code buffer, which shows the results next to the expression.

`, e f` will evaluate the current expression / function.

`, e ;` will evaluate the current expression and show the result as a comment


## Quick reference

The evaluation menu for Clojure is available via `, e` (or `M-RET e` in holy mode).

![Spacemacs - Clojure - Evaluate menu](/images/spacemacs-clojure-evaluate-menu.png)

Evaluation commands for Clojure are:

| Evil Normal | Description                                                       |
|-------------|-------------------------------------------------------------------|
| `, e ;`     | Evaluate the current expression and print the result as a comment |
| `, e b`     | Evaluate all the code in the current buffer                       |
| `, e e`     | Evaluate the previous expression and print the result             |
| `, e f`     | Evaluate the current expression and print the result              |
| `, e p`     | Pretty print result of the top-level expression in a new buffer   |
| `, e P`     | Pretty print result of the last expression in a new buffer        |
| `, e r`     | Evaluate code within the highlighted region                       |
| `, e w`     | Evaluate the previous expression and replace it with the result   |
| `, T e`     | Toggle Enlighten mode, showing intermediate values                |


> ####HINT::Displaying large results
> `, e p` or `, e P` pretty prints the results into a new buffer.  This is excellent for evaluating expressions that return a large result, eg. a large map.
> `, d v` the [`cider-inspector`](inspect.html) is a great way to navigate through a large data structure, especially if it is nested.
