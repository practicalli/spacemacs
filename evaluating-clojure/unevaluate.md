# Un-evaluate expressions




## Unevaluate a def expression in the REPL

You can quickly remove a defined name from the REPL.  This works for any `def` or `defn` expression that has been successfully evaluated in the REPL.

Removing a name from the expression helps you check if the code still works without that defined name.  Also if any of the names are returning results from an older version of the name definition, you can ensure that the definition has been removed (potential showing incorrect dependencies elsewhere in your code).


| Spacemacs | Major mode | Emacs     | Evil | Command     | Description                               |
|-----------|------------|-----------|------|-------------|-------------------------------------------|
|           |            | `C-c C-u` |      | cider-undef | remove a definition from the running repl |
|           |            |           |      |             |                                           |

When you evaluate a `def` or `defn` expression the name becomes part of the namespace available in the REPL.

So in the following example, when you evaluate the `def` expression for `delete-me` then you can call `delete-me` and get the string it points to as the return value.

Once you evaluate the `not-useful` function in the REPL you can then call `(not-useful)`.

```clojure
(def delete-me "I should not be here, please remove me")

delete-me


(defn not-useful []
  (str "I really dont do anything worthwhile"))

(not-useful)
```

By un-evaluating the name `delete-me` from the REPL, you can no longer evaluate `delete-me` successfully.  Removing the 


## Clear the REPL


| Spacemacs | Major mode | Emacs | Evil | Command | Description |
|-----------|------------|-------|------|---------|-------------|
|         |            |       |      |         |             |
