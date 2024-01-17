# Evaluating Clojure

Practicalli recommends evaluating Clojure expressions in the source code buffer, which displays the results next to the expression until you move the cursor.

![Spacemacs - Clojure evaluation in source code buffer](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-clojure-evaluate-source-code-inline-result-light.png?raw=true#only-light)
![Spacemacs - Clojure evaluation in source code buffer](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-clojure-evaluate-source-code-inline-result-dark.png?raw=true#only-dark)

++comma++ ++"e"++ ++"f"++ evaluates the top-level expression at cursor.

++comma++ ++"e"++ ++"p"++ ++"f"++ evaluates the top-level expression at cursor and pretty prints the result in a separate buffer. Useful for results that are collections and nested collections.  Use the [cider inspector](./inspect.md) for large data sets.

++comma++ ++"e"++ ++semi-colon++ evaluates the top-level expression at cursor and add the result as a comment. Useful for a design journal and when exploring a code base.

Review the [evaluating expressions](./expressions.md) page for more examples and a deeper explanation.


# Pretty Print results

Pretty Print displays evaluation results in an expanded structure which is more human readable.

++comma++ ++"e"++ ++"p"++ ++"e"++ displays the evaluation result from evaluating the last s-expression in a separate popup buffer window

++comma++ ++"e"++ ++"p"++ ++"f"++ is the same, but for the top level expression

++comma++ ++"e"++ ++"p"++ ++semi-colon++ and ++comma++ ++"e"++ ++"p"++ ++semi-colon++ pretty print results as a comment under the evaluated form.

??? HINT "Displaying large results"
    ++comma++ ++"e"++ ++"p"++ ++"f"++ or ++comma++ ++"e"++ ++"p"++ ++"e"++ pretty prints the results into a new buffer.  This is excellent for evaluating expressions that return a large result, eg. a large map. Keep the Cider Inspector buffer open to see the results of further evaluation commands, until the inspector buffer is closed.

    ++comma++ ++"d"++ ++"v"++ the [`cider-inspector`](inspect.md) is a great way to navigate through a large data structure, especially if it is nested.

## Quick reference

++comma++ ++"e"++ menu provides many different ways of evaluating parts of an expression, or a complete expression.

| Evil Normal                              | Description                                                       |
|------------------------------------------|-------------------------------------------------------------------|
| ++comma++ ++"e"++ ++semi-colon++         | Evaluate the current expression and print the result as a comment |
| ++comma++ ++"e"++ ++"b"++                | Evaluate all the code in the current buffer                       |
| ++comma++ ++"e"++ ++"e"++                | Evaluate the previous expression and print the result             |
| ++comma++ ++"e"++ ++"f"++                | Evaluate the current expression and print the result              |
| ++comma++ ++"e"++ ++"p"++ ++semi-colon++ | Pretty print result of the top-level expression as comment        |
| ++comma++ ++"e"++ ++"p"++ ++colon++      | Pretty print result of the top-level expression as comment        |
| ++comma++ ++"e"++ ++"p"++ ++"f"++        | Pretty print result of the top-level expression in a new buffer   |
| ++comma++ ++"e"++ ++"p"++ ++"e"++        | Pretty print result of the last expression in a new buffer        |
| ++comma++ ++"e"++ ++"r"++                | Evaluate code within the highlighted region                       |
| ++comma++ ++"e"++ ++"w"++                | Evaluate the previous expression and replace it with the result   |
| ++comma++ ++t++ ++"e"++                  | Toggle Enlighten mode, showing intermediate values                |
