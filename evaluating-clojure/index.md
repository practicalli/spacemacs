# Evaluating Clojure
Practicalli recommends evaluating Clojure expressions in the source code buffer, which displays the results next to the expression until you move the cursor.  The most common

![Spacemacs - Clojure evaluation in source code buffer](/images/spacemacs-cider-evaluate-source-code-buffer-defun.png)

`, e f` evaluates the top-level expression at cursor.

`, e p` evaluates the top-level expression at cursor and pretty prints the result in a separate buffer. Useful for results that are collections and nested collections.

`, e ;` evaluates the top-level expression at cursor and add the result as a comment. Useful for a design journal and when exploring a code base.

## Quick reference
`, e` menu provides many different ways of evaluating parts of an expression, or a complete expression.  `M-RET e` in holy mode.

![Spacemacs - Clojure - Evaluate menu](/images/spacemacs-clojure-evaluate-menu.png)


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
