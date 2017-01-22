# Evaluating Expressions

Evaluating individual expressions is a very effective way to test the actions of your code as you write it.


| Spacemacs   | Major mode  | Emacs     | Evil      | Command                     |
|-------------|-------------|-----------|-----------|-----------------------------|
| `SPC m e e` | `M-RET e e` | `C-x C-e` | `, m e e` | `cider-eval-last-sexp`      |
| `SPC m e f` | `M-RET e f` | `C-x C-f` | `, m e f` | `cider-eval-defun-at-point` |
| `SPC m e w` | `M-RET e w` |           | `, e w`   |                             |


## Evaluate code in the code buffer


> **Note** Evaluate the namespace and function definition in `src/spacemacs-workshop/core.clj`.

> Then write an expression to call foo with a string argument, eg. (foo "Spacemacs ")

<iframe width="560" height="315" src="https://www.youtube.com/embed/eJ-JPmkzyP8" frameborder="0" allowfullscreen></iframe>


> **Note** Now change the definition of the function `foo` by replacing the `println` function with the `str` function.  Both functions take the same arguments.


## Evaluate code and send to repl

In the Clojure code buffer you can send individual expressions to the REPL to be evaluated

![Spacemacs - Clojure - Send expressions to REPL](/images/spacemacs-clojure-cider-send-expression-to-repl.png)

If the REPL is not in the namespace as the Clojure code buffer, you must send any definitions to the REPL before trying to use them.  For example if you want to call a function, send that functions definition to the REPL first, then send the expression that calls that function.

![Spacemacs - Clojure - Send function definition then function call to REPL](/images/spacemacs-clojure-cider-send-to-repl-namespace-user.png)


## Call code from the REPL

Switch to the REPL window, `M-RET s s`.  By default you will be in the `user` namespace which does not include your code, so calling functions will return an error.


Use the function `in-ns` to change to the `spacemacs-workshop.core` namespace so you can call the functions defined in there.

![Spacemacs - Clojure REPL - Change to `spacemacs-workshop.core`](/images/spacemacs-clojure-repl-change-namespace-spacemacs-workshop.png)


You can also change the namespace in the repl from the Clojure code buffer using the function `cider-send-ns-to-repl` or `M-RET s n`. 


## Replace code with result

A powerful way to understand your code or explain to others what an expression does is to replace the code with result of its evaluation.


`M-RET e w` - replace previous expression with its return value


## Macro-expand

You can see the Clojure code that is created when evaluating a macro using `macro-expand`.  Expanding a macro can help you understand what that macro actually does

* `M-RET e m` - replace previous expression with its return value

In this example we expand a simple `defn` macro

```clojure
(defn foo
  "I don't do a whole lot."
  [x]
  (println x "Hello, World!"))
```

![Spacemacs - Clojure - Evaluate - Macro-expand a defn macro](/images/spacemacs-clojure-macro-expand-defn-expanded.png)
