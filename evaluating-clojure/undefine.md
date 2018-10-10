# Un-define expressions

As you are developing Clojure the names you use for functions and values can change.  Rather than restart the REPL to remove these unwanted names you can un-define them.

Use the [REPL command menu](/clojure-repl/repl-command-menu.html) in the REPL buffer (Vim Insert or Emacs state) to undef a symbol:

`, undef` in the REPL buffer (Vim Insert / Emacs state) will prompt for a symbol to undefine.

`TAB` when typing the symbol name will popup a list of matching symbols available in the REPL.  Select the name you wish to undef

[![Spacemacs Clojure REPL undef symbol helm narrowing](/images/spacemacs-clojure-repl-undef-symbol-helm-narrowing.png)](/images/spacemacs-clojure-repl-undef-symbol-helm-narrowing.png)


## Background

You can quickly remove a defined name from the REPL.  This works for any `def` or `defn` expression that has been successfully evaluated in the REPL.

Removing a name from the expression helps you check if the code still works without that defined name.  Also if any of the names are returning results from an older version of the name definition, you can ensure that the definition has been removed (potential showing incorrect dependencies elsewhere in your code).

When you evaluate a `def` or `defn` expression the name becomes part of the namespace available in the REPL.

So in the following example, when you evaluate the `def` expression for `delete-me` then you can call `delete-me` and get the string it points to as the return value.

Once you undefine the `not-useful` function in the REPL further calls to `(not-useful)` will cause an error.

```clojure
(def delete-me "I should not be here, please remove me")

delete-me


(defn not-useful []
  (str "I really dont do anything worthwhile"))

(not-useful)
```

By un-evaluating the name `delete-me` from the REPL, the `delete-me` name is unbound from its value and no longer valid in the current namespace.
