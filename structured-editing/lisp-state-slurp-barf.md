# Slurp and barf

When writing Clojure you sometimes put symbols or expressions in the wrong parenthesis, `()`, `[]`, `{}`.  Rather than delete the code or parenthesis you can use structural editing to move the code between parenthesis.  So you can change the behaviour of the code without worrying about breaking the structure.

* **Slurp** - pull something into an expression (like slurping a really thick milkshake)
* **Barf** - push out something from an expression (like barfing out that milkshake if it tasted unpleasant)

| Lisp state `SPC k` | Description                               |
|--------------------|-------------------------------------------|
| `b`                | barf forwards (push symbol out to right)  |
| `B`                | barf backwards (push symbol out to left)  |
| `s`                | slurp forwards (push symbol out to right) |
| `S`                | slurp backwards (push symbol out to left) |


> #### TODO::Add video of slurp and barf in action
