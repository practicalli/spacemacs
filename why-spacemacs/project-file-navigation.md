## Project and File Navigation

Opening and switching to directories, files and buffers with in a project is quick to do with Projectile.

If you are missing a more graphical way to explore your directories and files, then try Neotree or Ranger.


## [Projectile](https://projectile.readthedocs.io/en/latest/)

[Projectile](https://projectile.readthedocs.io/en/latest/) provides easy project management and navigation.

A project is a directory containing a version control repository, e.g. `.git` or a Clojure project, eg. `project.clj`, `pom.xml`

A directory can be manually defined as a project by adding an empty `.projectile` file to it.

Some of Projectile's features:

* jump to a directory, file or buffer in project
* toggle between files with same names but different extensions
* toggle between code and its test
* recently visited files in the project
* switch between projects you have worked on
* kill all project buffers
* replace in project
* multi-occur in project buffers
* grep in project
* regenerate project etags or gtags (requires ggtags).
* browse dirty version controlled projects

## Neotree

This layer provides a quick and simple way to navigate in an unknown project file tree with NeoTree.

To toggle the NeoTree buffer, press `SPC f t` or `SPC p t` (the latter opens NeoTree with the root set to the projectile project root).

To select the NeoTree window, press `SPC 0`. The NeoTree window always has the number 0 so it does not shift the current number of the other windows.

![Spacemacs - Neotree example](/images/spacemacs-neotree-example.png)

VCS integration is supported, the file color will change depending on its current state. With default spacemacs-dark theme:

* green: new file
* purple: modified file


* Using [Neotree in Spacemacs](/working-with-projects/neotree.html)
* [Spacemacs Neotree Layer](http://develop.spacemacs.org/layers/+filetree/neotree/README.html)

## Ranger

Navigate directories and view contents of files quickly and easily, using standard Vi keybindings

![Spacemacs - Ranger directory and file navigation](/images/spacemacs-ranger-example.png)


> ####Hint::Ranger is also a terminal based file manager
> https://ranger.github.io/
