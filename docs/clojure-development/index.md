# Clojure Development Overview

A [:fontawesome-solid-book-open: REPL workflow](/spacemacs/introduction/repl-workflow.md) is highly encouraged for effective Clojure development.

Start a REPL process for a Clojure project and connect an editor to the REPL, allowing code to be evaluated and results returned instantly. 

??? TIP "Simplest Clojure CLI project"
    A `deps.edn` file containing an empty hash-map `{}` is the simplest Clojure CLI project recognised by Spacemacs Clojure layer (CIDER).

    The CLI install configuration includes the Clojure library as a dependency and the `src` directory added to the class path, so Clojure `.clj` files under the `src` directory can be used with the REPL.


## Project Templates

[Create a Clojure project from a template](https://practical.li/clojure/clojure-cli/projects/templates/){target=_blank} to include common libraries and code.  A template can be simple configuration with a single namespace or highly detailed and functional service.

[:fontawesome-solid-book-open: Practicalli Project Templates](https://practical.li/clojure/clojure-cli/projects/templates/practicalli/){target=_blank} provide production-ready templates to build web services and APIs upon.

[:fontawesome-solid-book-open: Practicalli Project Templates](https://practical.li/clojure/clojure-cli/projects/templates/practicalli/){target=_blank .md-button}

??? HINT "Emacs shell or Command Line terminal"
    `SPC '` opens an Emacs popup buffer containing an shell terminal to run a command to create a Clojure project from a template.  

    Or open a terminal window from your operating system for a command line shell.


### Create Project from Template

Create a minimal project with Clojure CLI using the `practicalli/minimal` template and a project called practicalli/playground

!!! NOTE "Create a minimal project"
    ```shell
    clojure -T:project/create :template practicalli/minimal :name practicalli/playground
    ```

Create a new project that provides the structure of a production ready web service with example API.

!!! NOTE "Create a project for a Web Service with API"
    ```shell
    clojure -T:project/create :template practicalli/service :component donut :name practicalli/playground
    ```

## Open Project files

Use Spacemacs menu to open files from the Clojure project

++spc++ ++"p"++ ++"f"++ lists all project files, type characters to narrow the list, ++enter++ to select and open the file

++spc++ ++"p"++ ++"q"++ toggles between source code namespace and its related test namespace

++spc++ ++"f"++ ++"f"++ to navigate the file directory, ++tab++ to complete file and directory names, ++enter++ to open the selected file.  Create a new file by typing its name and pressing return, the file and any intermediate directory path will be created

++spc++ ++"f"++ ++d++ to permanently delete a file.

!!! HINT Automatically add a namespace
    [:fontawesome-solid-book-open: Clojure LSP](/spacemacs/refactor/clojure-lsp/){target=_blank} automatically adds an `ns` form to define the namespace when creating a new Clojure file.


## Start a REPL

Use the editor to start a REPL process, `cider-jack-in`.  Or start a REPl in a command line terminal and connect to that process from the editor, `cider-connect`.

=== "CIDER jack-in"
    ++comma++ ++single-quote++ (`sesman-start`) and select `cider-jack-in-clj` to start a REPL for the current Clojure project (also works without a project).

=== "Command Line REPL"

    Run a rich terminal UI using the `:repl/rebel` alias from [:fontawesome-solid-book-open: Practicalli Clojure-Cli-Config](https://practical.li/clojure/clojure-cli/practicalli-config/){target=_blank}

    The `:repl/rebel` alias also runs an nREPL server for an editor to connect to.

    ```shell
    clojure -M:repl/rebel
    ```

[:fontawesome-solid-book-open: REPL Driven Development In Spacemacs](/spacemacs/clojure-repl/){.md-button}


## Evaluate code

Use the buffers containing source code files to effectively evaluate Clojure expressions.

Results are returned instantly and shown in-line with the code.

`, e b` (`cider-eval-buffer`) to evaluate the the source code file in the current buffer.  Required namespaces are also loaded into the REPL.

`, e f` (`cider-eval-defun-at-point`) to evaluate the current expression from its top level (root).

`, e p f` as above with results pretty printed for human readability, opened in a new buffer.

[:fontawesome-solid-book-open: Evaluate Clojure Code](/spacemacs/evaluating-clojure/){target=_blank .md-button}


## Refactor

++comma++ ++"r"++ ++"r"++ (`lsp-rename`) to rename ns forms, def, defn and local names, updating any references to those names throughout the project.

Renaming a namespace also renames the filename along with `requires` that include the namespace in other namespaces

`def` / `defn` expressions a namespace contains should be removed from the running REPL to prevent inconsistencies between the code and REPL.

!!! HINT "Remove defined names before renaming"
    Keep the REPL state clean by removing the name of a function or value before it is renamed
    ++comma++ ++"e"++ ++"u"++ (`cider-undef`) removes the current var from the REPL (uses nREPL undef command)

    Alternatively, `, q r` to restart the REPL after names have been changed or deleted.

    [Remove Evaluated Vars](/spacemacs/evaluating-clojure/undefine/){target=_blank .md-button} 

