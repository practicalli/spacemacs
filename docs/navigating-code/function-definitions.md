# Navigate to function definitions

`, g g` go to the source code definition of the Clojure function under the cursor.  If the cursor is not on a function name, a prompt displays asking for the function name.

`, g G` to open the definition in another window

`' '` returns to the point in the code you originally jumped from.

!!! HINT "Run the REPL for best results"
    `cider-find-var` is used when a REPL is running, otherwise `dumb-jump-go` is called.

    `clojure.core` functions are known to CIDER. Custom functions, i.e. `defn` expressions in the project, must first be evaluated in the REPL.

    If `, g g` is not working, try evaluate any expression from the project and try `, g g` again.


## Listing functions

`SPC j i` lists matching functions of using the name under the cursor

Functions can come from anything that is on the classpath, including Java sources if they are installed.

!!! HINT "Java classes and methods"
    `, g g` also works for Java definitions once the Java sources are added to your project.  See the section on [Java Definitions](java-definitions.md)
