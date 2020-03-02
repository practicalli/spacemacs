# Literate Programming
[Literate programming ](https://en.wikipedia.org/wiki/Literate_programming)is a document in a natural language, interspersed with snippets of code that can be executed.  It is an interactive document that can update sections of itself from the code that runs inside.

## Configure Literate Programming with Clojure
Include the `org` and `clojure` layers in the `dotspacemacs-layer-configuration` of the `~/.spacemacs` configuration file.

## Create a Clojure project
Literate programming can be used with any working Clojure project, using either a `deps.edn` configuration or a Leinigen `project.clj** file.

Create a project using either Clojure CLI tools or Leiningen.  Dependencies, apart from Clojure, itself are not required.

**Clojure CLI tools (with clj-new)**
```shell
clojure -A:new app practicalli/literate
```

**Leiningen**
```shell
lein new app literate
```

> #### Hint::Simple example project
> Clone [practicalli/literate-programming-in-clojure](https://github.com/practicalli/literate-programming-in-clojure) project for a simple example project that works.

## Run a Clojure REPL
Open the `deps.edn`, `project.clj`, or any source code file from the project.

`, '` or `M-RET '` to start a REPL.

## Create an org file with Clojure code blocks
Create an org file, eg. `literate-clojure.org` in the root of the Clojure project.

Write the text of the document and use `, b d` to add a code block, selecting `clojure` as the language.

Add `:results value` after `clojure` in the code block `BEGIN` line.

In the code block write your clojure code, eg `(+ 1 2 3)`

`C-c C-c` to evaluate the code block at the cursor point. The result is pasted underneath the code block.
