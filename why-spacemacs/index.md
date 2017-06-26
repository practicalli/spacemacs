# Why Spacemacs

Why would you use Spacemacs over configuring your own Emacs setup?  Here are a few hightlights

* Batteries included configuration
* Fast startup & lazy loading of modes
* [Add features with layers](layers.html) (rather than configuring individual packages)
    * Clojure layer provides full CIDER & clj-refactor support
* [Easily discover commands with which-key](which-key.html)
* [Helm narrowing & completion](helm.html)
* [Simplifying keybindings with multiple states](states.html)
* [Structured editing with Smartparens and Lisp mode](structured-editing.html)
* Project management with Projectile, simple window & buffer management
    * Numbered buffers
* [Transient State menus for repetitive actions](transient-state-menus.html)


# Batteries Included configuration

Once you have installed Spacemacs then there is little or no configuration actually needed.

You can of course customise Spacemacs quite heavily, although its worth spending a little time getting to know all the features before changing too much.

# Spacemacs is fast

The startup for Spacemacs is really quick, usually less than 2 seconds, even after adding a whole host of features have been added.  This speed is due to Spacemacs only loading in the configuration for modes when you use them.  For example, when you open a Clojure source code file for the first time, the Clojure layer is loaded and clojure mode is applied.

You can also use `emacsclient` command in a terminal to open files instantly, using the Emacs server.


The rest of this section goes into more details as to why you would choose Spacemacs for your developer life.



# Miscellaneous features

## Smooth scrolling

Unlike the traditional jump-scrolling of Emacs, Spacemacs uses smooth scrolling as you fing in most other text editors.



# Navigating windows, buffers & projects

Navigating is quick and simple with the use of window, buffer and project management menus

## Numbered buffers

Each buffer gets a number in the status bar, allowing you to jump to any buffer using `SPC` and the buffer number, eg. `SPC 3` jumps to buffer number 3.


## Projectile

[Projectile](https://github.com/bbatsov/projectile) is a project interaction library for Emacs. Its goal is to provide a nice set of features operating on a project level without introducing external dependencies (when feasible). For instance - finding project files has a portable implementation written in pure Emacs Lisp without the use of GNU find (but for performance sake an indexing mechanism backed by external commands exists as well).

Projectile tries to be practical - portability is great, but if some external tools could speed up some task substantially and the tools are available, Projectile will leverage them.

This library provides easy project management and navigation. The concept of a project is pretty basic - just a folder containing special file. Currently git, mercurial, darcs and bazaar repos are considered projects by default. So are lein, maven, sbt, scons, rebar and bundler projects. If you want to mark a folder manually as a project just create an empty .projectile file in it. Some of Projectile's features:

* jump to a file in project
* jump to files at point in project
* jump to a directory in project
* jump to a file in a directory
* jump to a project buffer
* jump to a test in project
* toggle between files with same names but different extensions (e.g. `.h` <-> `.c/.cpp`, `Gemfile` <-> `Gemfile.lock`)
* toggle between code and its test (e.g. `main.service.js` <-> `main.service.spec.js`)
* jump to recently visited files in the project
* switch between projects you have worked on
* kill all project buffers
* replace in project
* multi-occur in project buffers
* grep in project
* regenerate project etags or gtags (requires [ggtags](https://github.com/leoliu/ggtags)).
* visit project in dired
* run make in a project with a single key chord
* check for dirty repositories

