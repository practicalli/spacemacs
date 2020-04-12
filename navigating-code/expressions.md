# Navigating Expressions
Jumping between symbols and expressions is an effective way to navigate your Clojure code, especially where you have nested expressions.

`SPC k .` enters [Lisp State](/structural-editing/lisp-state.html) transient state, where you can easily navigate around symbols and expressions.

| Key bindings | Description                                 |
|--------------|---------------------------------------------|
| `$`          | jump to end of current expression           |
| `0`          | jump to the beginning of current expression |
| `j` /  `k`   | next close paren / previous open paren      |
| `l` /  `h`   | next symbol / previous symbol               |
| `L` /  `H`   | next expression / previous expression       |
| `t`          | transpose expression                        |
| `U`          | got to parent sexp backward                 |
| `w`          | wrap expression with parenthesis            |
| `W`          | unwrap expression                           |
| `y`          | copy expression                             |

[Lisp state](/structural-editing/lisp-state.md) has many more examples of structural editing.
