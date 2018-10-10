## Project and File Navigation

[Projectile](https://projectile.readthedocs.io/en/latest/) provides easy project management and navigation.  A project is a directory containing a version control repository, e.g. `.git` or a Clojure project, eg. `project.clj`, `pom.xml`.  A directory can be manually defined as a project by adding an empty `.projectile` file to it.

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

[![Spacemacs - Project menu](/images/spacemacs-project-menu.png)](/images/spacemacs-project-menu.png)


> ####Hint::Looking for a file browser
> If you are looking for a file browser to explore your directories and files, then try Neotree or Ranger.

## Neotree

Neotree provides a quick and simple way to navigate all the directories and files in a project.

To toggle the NeoTree buffer, press `SPC f t` or `SPC p t` (the latter opens NeoTree with the root set to the projectile project root).

To select the NeoTree window at any time, press `SPC 0`. The NeoTree window always has the number 0.

![Spacemacs - Neotree example](/images/spacemacs-neotree-example.png)

Version control is supported and file colours will change depending on its current state, e.g. green for new files, purple for modified files.

* [Using Neotree in Spacemacs](/working-with-projects/neotree.html)
* [Spacemacs Neotree Layer](http://develop.spacemacs.org/layers/+filetree/neotree/README.html)

## Ranger

Navigate directories and view contents of files quickly and easily, using standard Vi keybindings, `j`, `k`, `l` and `h`.  Ranger is great for quickly looking through files, thanks to its preview option.

![Spacemacs - Ranger directory and file navigation](/images/spacemacs-ranger-example.png)

[Discover more about ranger](/spacemacs-basics/working-with-projects/ranger.html) in the working with projects section.

> ####Hint::Ranger is also a terminal based file manager
> https://ranger.github.io/
