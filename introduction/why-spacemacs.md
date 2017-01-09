# Why Spacemacs

Why would you use Spacemacs over configuring your own Emacs setup?  Here are a few hightlights

# Spacemacs is fast

The startup for Spacemacs is really quick, less than 2 seconds, even after adding a whole host of features (layers).  Some of this speed may be due to the lazy loading approach that Spacemacs takes.  In the best tradition of Lisp, some things are only loaded in Spacemacs when they are first used.  For example, when you open a Clojure source code file for the first time, the Clojure layer is loaded and clojure mode is applied.


# Navigating with Which Key & Helm

![Spacemacs Helm File Edit](/images/spacemacs-helm-file-edit.png)

Developers drive Emacs with keybindings or use commands via `M-x`.  The more features you add to Emacs, the more keybindings and commands you have at your fingertips.  So to manage all this power, Spacemacs uses Which Key & Helm to organise these keybindings and commands into groups.

Helm also helps you navigate the file system too, minimising the need to type directory and file names in full.

Commands are grouped by their nemonic character, for example

- `S` - spelling
- `T` - themes
- `a` - applications
- `b` - buffers
- `f` - files
- `g` - git/version control

[Helm](https://github.com/emacs-helm/helm) is an incremental completion and selection narrowing framework.  Its the central control tower of Spacemacs, it is used to manage buffers, projects, search results, configuration layers, toggles and more.

Once you have learnt the Spacemacs groupings for Helm its really fast to do anything, so take a look at the [Helm documentation wiki](https://github.com/emacs-helm/helm/wiki).

You can still type in command names using `M-x command-name` too, if you know the name of the command you are looking for.

> ido mode is still available in Spacemacs but by default it is over-ridden by Helm.  You can enable ido using `dotspacemacs-use-ido t` in the `dotspacemacs/init` section of `.spacemacs`, however this only replaces a few commands.


# Other features of Spacemacs

![Spacemacs - other features](/images/spacemacs-other-features.png)

## Numbered buffers

Each buffer gets a number in the status bar, allowing you to jump to any buffer using `SPC` and the buffer number, eg. `SPC 3` jumps to buffer number 3.


## Smartparens and symbol balancing/highlighting

Smartparents helps speed up typing and reducing errors due to unmatched symbols.  For most symbols in most modes a matching symbol is created.  So if you type `(` then a matching `)` is created too.  If you want to surround some existing text with a symbol pair, then simply highlight the text and press the opening symbol.  A closing symbol is also highlighted when the cursor is at the opening symbol.  Spacemacs also highlights the surrounding symbols, including any parents.  So if you are in a nested list, `(parent code (nested code))`, then if the cursor is on the nested code, both nested & parent symbols are highlighted.


## Smooth scrolling

Unlike the traditional jump-scrolling of Emacs, Spacemacs uses smooth scrolling as you fing in most other text editors.
