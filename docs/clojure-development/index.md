# Clojure Development Overview

A [REPL workflow](/spacemacs/introduction/repl-workflow.md) is supported and highly encouraged for effective Clojure development.

=== "CIDER jack-in"
    ++comma++ ++single-quote++ (`sesman-start`) and select `cider-jack-in-clj` to start a REPL for the current Clojure project (also works without a project).

=== "Command Line REPL"

    Run a rich terminal UI using the `:repl/rebel` alias from [practicalli/clojure-deps-edn](https://github.com/practicalli/clojure-deps-edn){target=_blank}

    ```shell
    clojure -M:repl/rebel
    ```

!!! TIP "Simplest Clojure CLI project"
    A `deps.edn` file containing an empty hash-map `{}` is the simplest Clojure CLI project recognised by Spacemacs Clojure layer (CIDER).

    The Clojure library is automatically included as a dependency and the `src` directory added to the class path, so Clojure `.clj` files under the `src` directory can be used with the REPL.


[REPL Driven Development In Spacemacs](/spacemacs/clojure-repl/){.md-button}


## Using Project Templates

Clojure projects can be generated from templates using [deps-new](https://github.com/seancorfield/clj-new){target=_blank} for a Clojure CLI specific project.

[clj-new](https://github.com/seancorfield/clj-new){target=_blank} or Leiningen can create a project from a wide range of templates.  Check the template for options and to understand which tooling it supports.


`SPC '` opens an Emacs popup buffer containing an shell terminal to run a command to create a Clojure project from a template.  Or you can open a terminal window from your operating system.

=== "Clojure CLI deps-new"

    `:project/create` is an alias for this tool provided by [:fontawesome-brands-github: practicalli/clojure-deps-edn](https://github.com/practicalli/clojure-deps-edn){target=_blank}, a user level configuration for Clojure CLI

    Create a new project with Clojure CLI, using the `app` template and a project called practicalli/playground

    ```shell
    clojure -T:project/create :template app :name practicalli/playground
    ```

=== "Clojure CLI clj-new"

    `:project/new` is an alias for this tool provided by [:fontawesome-brands-github: practicalli/clojure-deps-edn](https://github.com/practicalli/clojure-deps-edn){target=_blank}, a user level configuration for Clojure CLI

    Create a new project with Clojure CLI, using the `app` template and a project called practicalli/playground

    ```shell
    clojure -M:project/new app practicalli/playground
    ```


=== "Leiningen"

    [Leiningen Install](/alternative-tooling/leiningen.md){.md-button}

    Create a new project with Leiningen called playground, within the practicalli domain. Use the `app` template to create a very simple Clojure application.

    ```shell
    lein new app playground
    ```
    Leiningen can generate a wide range of projects from templates.  To use these projects with Clojure CLI a `deps.edn` file should be added, using the same collection of library dependencies. See [Leiningen](/spacemacs/alternative-tooling/leiningen.md) for details


## Project files

++spc++ ++"p"++ ++"f"++ lists all project files, type characters to narrow the list, ++enter++ to select and open the file

++spc++ ++"p"++ ++"q"++ toggles between source code namespace and its related test namespace

++spc++ ++"f"++ ++"f"++ to navigate the file directory, ++tab++ to complete file and directory names, ++enter++ to open the selected file.  Create a new file by typing its name and pressing return, the file and any intermediate directory path will be created

++spc++ ++"f"++ ++d++ to permanently delete a file.

!!! HINT Automatically add a namespace
    [Clojure LSP]() and [clj-refactor]() automatically add an `ns` form to define the namespace when creating a new Clojure file.


## Refactor

++comma++ ++"r"++ ++"r"++ (`lsp-rename`) to rename ns forms, def, defn and local names, updating any references to those names throughout the project.

Renaming a namespace also renames the filename along with `requires` that include the namespace in other namespaces

`def` / `defn` expressions a namespace contains should be removed from the running REPL to prevent inconsistencies between the code and REPL.

!!! HINT "Remove defined names before renaming"
    Keep the REPL state clean by removing the name of a function or value before it is renamed
    ++comma++ ++"e"++ ++"u"++ (`cider-undef`) removes the current var from the REPL (uses nREPL undef command)

    Alternatively, `, q r` to restart the REPL after names have been changed or deleted.
