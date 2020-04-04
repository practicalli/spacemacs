# Projectile - project specific commands

`SPC p` opens the projectile menu allowing you to run commands relative to the project of the active buffer.

[![Spacemacs Projectile menu](/images/spacemacs-projectile-menu.png)](/images/spacemacs-projectile-menu.png)

## What is a Projectile project

A project can be one or more of the following things

* Git - a directory with the `.git` directory
* Language specific - e.g. a Clojure Leiningen project
* Projectile - any directory with a `.projectile` file

> #### Hint::Searching across multiple projects
> Create an empty file called `.projectile` in the root of the directory that contains all your projects.  `SPC /` in any project will now search through all files in all your projects.  Remove the `.projectile` file when finished, to search through just the current project.

## Opening Files from the same project

`SPC p f` to open a file in the current project that you know the name of. All project files are listed and as you type the file name the list of names is narrowed. Use `C-k` and `C-j` keybindings to move up and down the list respectively.

This is a good approach if you know the name but not the directory path of the file.  Use `SPC f f` if you know the directory but not the name of the file you want.

[![Spacemacs Projectile File - new file](/images/spacemacs-projectile-file-new-file--light.png)](/images/spacemacs-projectile-file-new-file--light.png)


## Switching between buffers

`SPC p b` gives a helm popup list of currently open buffers for the current project.  Entering a buffer name pattern narrows that list and `C-k` and `C-j` keybindings move up and down the list respectively.


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


## Project search and replace

`SPC p %` starts projectile-grep, prompting for the search term and what text to use to replace it.

Each buffer containing a matching search text will be opened in turn and each matching instance of the text will be jumped to for confirmation that it should be replaced.

`y` to replace the current match and jump to the next match

`n` to skip replacement of the current match and jump to the next match.

> #### Hint::Helm-ag and iedit more effective for larger changes
> Use [Evil tools to replace text across projects](/evil-tools/replacing-text-across-projects.md) (refactor), especially for large numbers of changes.  Only matching lines are displayed so it is easier to see how many places you are making the change in.
