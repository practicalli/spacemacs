# Projectile - project specific commands

`SPC p` opens the projectile menu allowing you to run commands relative to the project of the active buffer.

[![Spacemacs Projectile menu](/images/spacemacs-projectile-menu.png)](/images/spacemacs-projectile-menu.png)

## What is a project

A project can be one or more of the following things

* Git - a directory with the `.git` directory
* Language specific - e.g. a Clojure Leiningen project
* Projectile - any directory with a `.projectile` file

## Opening Files from the same project

`SPC p f` is a quick way to open a file that you know the name of as it lists all the files in a project.  This is a good approach if you know the name but not the directory path of the file.

The list of files will narrow as you start typing a file name and you can use the `C-k` and `C-j` keybindings to move up and down the list respectively.

[![Spacemacs Projectile File - new file](/images/spacemacs-projectile-file-new-file--light.png)](/images/spacemacs-projectile-file-new-file--light.png)


## Switching between buffers

`SPC p b` gives a helm popup list of currently open buffers for the current project.


## Toggling between test and code files

`SPC p a` toggles the buffer between the test and code files in your project.

In Clojure this is based on the corresponding namespaces, so `SPC p a` would toggle between these two files.

```
src/project-name/component/clojure-code.clj
test/project-name/component/clojure-code.clj
```

Keybindings / commands

`projectile-toggle-between-implementation-and-test`


Cider also has a command to do this:

`cider-test-default-test-ns-fn`

Allegedly, this command is not as effective as the projectile command.
