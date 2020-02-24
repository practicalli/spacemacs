# Evaluating individual Expressions

Evaluating individual expressions is a very effective way to test the actions of your code as you write it.

| Evil Normal | Command                                |
|-------------|----------------------------------------|
| `, e e`     | `cider-eval-last-sexp`                 |
| `, e f`     | `cider-eval-defun-at-point`            |
| `, e ;`     | `cider-eval-defun-at-point-as-comment` |
| `, e w`     | `cider-eval-last-sexp-and-replace`     |


<iframe width="560" height="315" src="https://www.youtube.com/embed/eJ-JPmkzyP8" frameborder="0" allowfullscreen></iframe>


## Replace code with result

A powerful way to understand your code or explain to others what an expression does is to replace the code with result of its evaluation.  This technique is especially useful for expressions that are nested within another expressions.

`, e w` - replace previous expression with its return value

Don't forget to undo, `u`, these changes and return to the original code.
