# Literate Programming

[Literate programming ](https://en.wikipedia.org/wiki/Literate_programming){target=_blank} is a document written in a natural language, interspersed with snippets of code that can be executed and results visualised as text or graphics.  It is an interactive document that can update sections of itself from the code that runs inside.

In Spacemacs and Clojure development, it means you could write a document explaining your project or library and include code that can execute and give results in the document itself.

To encourage contributors to open source project or on-boarding a developer onto a team, a literate programming document that explains how all the important aspects work, including real code examples that they can experiment with, would remove barriers in becoming familiar with a project.


## Literate programming with Spacemacs

Emacs has Org-mode with can do amazing things with documents, simply open a file with a `.org` filename extension.

Org-mode includes Babel, which can take code and run it in an Emacs buffer of the correct major-mode for the programming language and automatically return the result back to the org-mode file.


## Configure Literate Programming with Clojure

Add `org` and `clojure` layers in Spacemacs configuration file


### Create a Clojure project

Literate programming can be used with any working Clojure project, using either a `deps.edn` configuration or a Leiningen `project.clj` file.

Create a project using either Clojure CLI tools or Leiningen.  Dependencies, apart from Clojure, itself are not required.

=== "Clojure CLI"

    ```shell
    clojure -T:project/new :template app :name practicalli/literate
    ```

=== "Leiningen"

    ```shell
    lein new app literate
    ```

!!! HINT "Simple example project"
    Clone [practicalli/literate-programming-in-clojure](https://github.com/practicalli/literate-programming-in-clojure) project for a simple example project that works.


### Run a Clojure REPL

Open the `deps.edn`, `project.clj`, or any source code file from the project.

++comma++ ++"m"++ ++"s"++ and select `cider-jack-in-clj` to start a REPL.


### Create an org file with Clojure code blocks

Create an org file, eg. `literate-clojure.org` in the root of the Clojure project.

Write the text of the document and use `, b d` to add a code block, selecting `clojure` as the language.

Add `:results value` after `clojure` in the code block `BEGIN` line.

In the code block write your clojure code, e.g. `(+ 1 2 3)`

++ctrl+c+ctrl+"c"++ to evaluate the code block at the cursor point. The result is pasted underneath the code block.


## Clojure Literate programming examples

Starting with a very basic Clojure expression to test evaluation is working correctly.  Using `:results silent` will not add the result to the `.org` file.

```org
#+begin_src clojure :results silent
  (+ 1 4)
#+end_src
```

++ctrl+c+ctrl+"c"++ with the cursor placed in the code block

This should evaluate the Clojure form and echo the results: "5" in the mini-buffer.

Now insert the results into the org buffer immediately after the Clojure code block

```org
#+begin_src clojure :results value
  [ 1 2 3 4]
#+end_src
```

++ctrl+c+ctrl+"c"++ with the cursor placed in the code block

The following results block will be inserted immediately following the code block

```org
#+RESULTS
[ 1 2 3 4]
```

Multiple expressions can be defined.  First define a Clojure data structure (hash-map) and then use a keyword as a function to retrieve a specific value from the hash-map.

```org
#+begin_src clojure :results value
  (def small-map {:a 2 :b 4 :c 8})
  (:b small-map)
#+end_src

#+RESULTS:
: 4
```

Make a Graph of the results

Using the Clojure [Incanter library](https://github.com/incanter/incanter){target=_blank} to create a line plot graph using the Incanter xy-plot function.

The Incanter library should first be added to the Clojure project as a dependency.

=== "Clojure CLI"

    Add Incanter to the `:deps` key of the `deps.edn` file

    ```clojure
    {:paths ["src" "resources"]
     :deps {org.clojure/clojure {:mvn/version "1.10.3"}
            incanter/incanter   {:mvn/version "1.9.3"}}}
    ```

=== "Leiningen"

    Add Incanter to the `:dependencies` key of the `project.clj` file

    ```clojure
    (defproject clojure-literate-programming "0.1.0"
      :description "Literate Programming with Incanter"
      :license {:name "Creative Commons Attribution Share-Alike 4.0 International"
                :url "https://creativecommons.org/"}
      :dependencies [[org.clojure/clojure "1.10.3"]
                     [incanter "1.9.3"]])
    ```


Use the Incanter library to create an x-y line plot. The `view` function displays the line plot. The plot is also saved to both PDF and PNG format image files.

```org
#+begin_src clojure
  (use '(incanter core charts pdf))
  ;;; Create the x and y data:
  (def x-data [0.0 1.0 2.0 3.0 4.0 5.0])
  (def y-data [2.3 9.0 2.6 3.1 8.1 4.5])
  (def xy-line (xy-plot x-data y-data))
  (view xy-line)
  (save-pdf xy-line "incanter-xy-line.pdf")
  (save xy-line "incanter-xy-line.png")
#+end_src
```

Insert the image into the exported PDF document:

```org
#+CAPTION: A basic x-y line plot
#+NAME: fig:xy-line
[[./incanter-xy-line.pdf]]
```

Files are saved to the root of the Clojure project.


## Export to LaTeX or HTML

++ctrl+c+ctrl+"e"++ ++"l"++ ++"l"++ to export to LaTeX.

 ++ctrl+c+ctrl+"e"++ ++"h"++ ++"h"++ to export to HTML.

The exported HTML code will hyperlink the PDF file. To embed the image in the HTML, switch to the PNG image file.

The exported LaTeX (.tex) file will embed either the PDF or PNG file. Graphical quality will be superior with the PDF file.


## Session Evaluation

Use the `:session` option to run all Clojure code in the same REPL process

Without `:session` each individual code block will execute by starting a Clojure REPL process. Due to the start-up time of a Java virtual machine, this can make execution of many blocks slow.

!!! HINT "Sessions changed in Org 9"
    The `:session` option may not be required in Org version 9.  Testing is required.


## Specify a namespace

Each code block will execute in the default `user` namespace, unless changed via CIDER nREPL connection.

A namespace can be specified in a code block using the Clojure `ns` function.

```org
#+begin_src clojure :results pp
(ns practicalli.greet)
(def hello "Hello Practicalli, this is the greet namespace")
#+end_src

#+RESULTS:
: #'practically.greet/hello
```

Following code blocks in the .org file will continue to use the specified namespace.

```org
#+begin_src clojure :results value :ns kk2
*ns*
#+end_src

#+RESULTS:
: #'practicalli.greet/hello
```

## References

[Incanter examples](https://github.com/incanter/incanter#usage){target=_blank .md-button}
