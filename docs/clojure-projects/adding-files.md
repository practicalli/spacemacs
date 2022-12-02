# Adding files to the Clojure project

The project menu commands are very useful once a file from a project is open in Spacemacs.

## Opening existing files

`SPC p f` to open an existing file from the project, without having to navigate to its directory.

`SPC p a` to toggle between the source code namespace and its related test namespace

`SPC f f` to navigate to a specific directory and open a file.


## Creating a new file

`SPC f f` and navigate to the directory in which to create the file. Type the name of the new file and select the line starting with `[?]` to create the file.

You can also create new directories as you create a new file.  Type the name of the directory, followed by the new file name.  The first time the file is saved, you are asked if you want to create the new directories.

TODO: video of this in action.


## Adding a namespace

Add the namespace using the directory path and file name for the file, converting names to kebab-case where relevant.

`, '` to run a Clojure REPL

Type `ns` in the new file and you will see an auto-completion popup

Select `ns -> ns` using `C-j` or `C-k` to navigate the popup entries, `RET` to select.

![Spacemacs auto-completion namespace snippet](/images/spacemacs-autocompletion-ns.png)

A `(ns 'my-org/my-namespace)` definition will be added to the top of the file.

`SPC f s` to save the changes to the file.

> #### Hint::clj-refactor automatically adds a namespace
> When creating a new Clojure file, `clj-refactor` will add a namespace to the top of the file.
