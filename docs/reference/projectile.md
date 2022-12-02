## Projectile project navigation and management

[Projectile](https://docs.projectile.mx/projectile/) provides commands to navigate within a project and manage files and buffers as a project.

A project is defined by any of the following:

* a source control directory e.g. `.git`
* programming language tools e.g. `deps.edn`
* projectile configuration file, `.projectile`

## Commonly used commands

`SPC p f` will find a file by name within the project scope

`SPC p a` will alternate between a source code file and its unit test file

`SPC p "` opens an external terminal at the root of the project, so external terminal commands can easily be run on the project, e.g. `clojure -M:repl/rebel` to start a terminal UI REPL

`SPC `


## Ignore files in project Projectile configuration file

A `.projectile` file at the root of a project include file and directory name [patterns for Projectile to ignore](https://docs.projectile.mx/projectile/projects.html#ignoring-files), similar to a `.gitignore` file.

Projectile will ignore patterns in a `.gitignore` file. however, there may be additional patterns that Projectile should ignore that Git should not

Ignore files at the root of the project
```none
-/log
-/tmp
-/public/uploads
```

Relative pathname ignores:
```none
-tmp
-*.port
-*.yml
```

Ignore everything except certain sub-directories (not relevant for file names)

```none
+/src/practicalli
+/tests/practicalli
```


## Projectile menu

`SPC p` opens the projectile menu

![Spacemacs Projectile Menu](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/screenshots/menus/spacemacs-projectile-menu.png)
