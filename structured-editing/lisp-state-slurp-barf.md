# Slurp and barf

When writing Clojure you sometimes put symbols or expressions in the wrong parenthesis.  Rather than delete the parenthesis you can move code between parenthesis.  

* **Slurp** - pull something into an expression (like slurping a really thick milkshake)
* **Barf** - push out something from an expression (like barfing out wind if you ate too quickly)

| Spacemacs | Major mode | Emacs | Evil | Command | Description                               |
|-----------|------------|-------|------|---------|-------------------------------------------|
| `SPC k b` | `M-m k b`  |       |      |         | barf forwards (push symbol out to right)  |
| `SPC k B` | `M-m k B`  |       |      |         | barf backwards (push symbol out to left)  |
| `SPC k s` | `M-m k s`  |       |      |         | slurp forwards (push symbol out to right) |
| `SPC k S` | `M-m k S`  |       |      |         | slurp backwards (push symbol out to left) |



## Lisp State

If you need to slurp or barf n a buffer containing a Clojure file, open the **lisp-state** using `SPC k .`

| lisp-state | Description           |
|------------|-----------------------|
| `s`        | Slurp in from right   |
| `S`        | Slurp in from left    |
| `b`        | Barf out to the right |
| `B`        | Barf out to the left  |


