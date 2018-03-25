# Common CIDER default keybindings for Emacs

  There are a number of [Cider keyboard shortcuts (keybindings)](https://github.com/clojure-emacs/cider#keyboard-shortcuts) already defined that also work alongside the Spacemacs keybindings.

> ####Hint::CIDER keybindings have more cognitive load
> It is this authors opinion that the CIDER keybindings are harder to learn than the mnemonic keybindings of Spacemacs.


* `C-c C-e` - evaluates the previous form to the current position of the cursor and shows the result in the minibuffer and inline with the code (until you move the cursor away).  So place your cursor after the closing parentheses `)` of your expression or on the next line and hit the keybinding and see the result.

* `C-c M-;` - evaluates previous form and prints the result as a comment on the following line.  The keybinding `M-;` is a universal comment in all modes.  With C-c as a prefix it evaluate the previous function before creating a comment of the return value.

![Emacs Live - CIDER eval form with result in minibuffer - C-c C-e](/images/emacs-cider-eval-expression-minibuffer.png)

* `C-c M-e` - the same as above except the result is sent to the REPL

![Emacs Live - CIDER eval form with result in the REPL - C-c M-e](/images/emacs-cider-eval-expression-repl.png)

* `C-c C-k` - evaluate the whole buffer.  So with the cursor in a Clojure source file, all the forms / expressions are evaluate as if the code was loaded in from scratch.

* `C-c C-d d` - show the documentaion as you would with `(doc function-name)`.  Place the cursor over a function name, hit the keybinding and see the documenation for that funtion.  This also works inside the REPL buffer, so no need to use `(doc)`, which is not loaded by default.

* `C-c M-n` - switch to namespace of current Clojure buffer.  So with the cursor in a Clojure source file, hit the keybinding and your REPL buffer will now be in the namespace for that Clojure code.

![Emacs Live - CIDER change to namespace of current Clojure code - C-c M-n](/images/emacs-cider-namespace-change.png)

> Changing into a namespace does not automatically evaluate the code in that namespace, so evaluate the whole buffer `C-c C-k` or evaluate specific expressions (forms) `C-c M-e`.  Once evaluated, you can evaluate that code in the REPL.

* `M->` or `M-x cider-jump-to-var` prompts you for a var, a function `(defn)` or symbol name `(def)` and moves the cursor to its definition.  If the cusor is already on a matching name the the cursor jumps straight to that definition.

* `C-c C-q` or `M-x cider-quit` - close the REPL and its associated buffer.

  There are many more things you can do within Clojure files and the REPL, so take a look at the [Cider keyboard shortcuts (keybindings)](https://github.com/clojure-emacs/cider#keyboard-shortcuts) once you have the basics mastered.
