# Project and File Navigation

[Projectile](https://projectile.readthedocs.io/en/latest/){target=_blank} provides easy project management and navigation.  A project is a directory containing a version control repository, e.g. `.git` or a Clojure project, eg. `project.clj`, `pom.xml`.  A directory can be manually defined as a project by adding an empty `.projectile` file to it.

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

[![Spacemacs - Projectile](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/screenshots/menus/spacemacs-projectile-menu.png)](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/screenshots/menus/spacemacs-projectile-menu.png)


## Treemacs

Treemacs is the default visual file browser in Spacemacs, providing a way to view and navigate all the directories and files in a project.  Visit the [Treemacs project for details of all its features](https://github.com/Alexander-Miller/treemacs#detailed-feature-list){target=_blank}

++spc+"f"+"t"++ or ++spc+"p"+"t"++ toggles the Treemacs buffer, the latter opens Treemacs with the root set to the projectile project root.

++spc+0++ to select the Treemacs window at any time. The Treemacs window s always assigned the number 0.

![Spacemacs - Treemacs example](http://develop.spacemacs.org/layers/+filetree/treemacs/img/treemacs.png)

* [Spacemacs Treemacs Layer](http://develop.spacemacs.org/layers/+filetree/treemacs/README.html){target=_blank}


## Ranger

++spc+a+t+r+r++ runs ranger to navigate directories and view contents of files quickly and easily, using standard Vi keybindings, ++"j"++,++"k"++,++"h"++,++"l"++.

Ranger is great for quickly looking through files, thanks to its preview option.

![Spacemacs - Ranger directory and file navigation](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/screenshots/spacemacs-ranger-navigate-preview.png)

[Discover more about ranger](/spacemacs-basics/working-with-projects/ranger.md) in the working with projects section.

!!! HINT "Ranger terminal file manager"
    [Ranger terminal file manager](https://ranger.github.io/){target=_blank}
