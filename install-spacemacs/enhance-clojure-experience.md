# Enhancing the Clojure experience

Enhance the **clojure** layer by adding automatic linting and additional refactoring and add several packages for general development features. [`.spacemacs` file](https://github.com/practicalli/spacemacs-config/blob/master/.spacemacs.d/init.el) provides a documented configuration of the layers currently recommended.

| Layer name         | Description                                                                                                                                                             |
|--------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `auto-completion`  | to complete names of functions and symbol names, also list snippets.                                                                                                  |
| `clojure`          | [CIDER](https://docs.cider.mx) with [clj-refactor](https://github.com/clojure-emacs/clj-refactor.el/wiki) and [clj-kondo](https://github.com/borkdude/clj-kondo) linter |
| `elisp`            | to edit `.spacemacs` configuration and any other Emacs configuration or package.                                                                                        |
| `git`              | git version control with [Magit](https://magit.vc/) in full screen, with fringe highlighting of changes in buffers                                                      |
| `github`           | working with remote repositories and gists on GitHub                                                                                                                    |
| `helm`             | completion and selection narrowing framework                                                                                                                            |
| `markdown`         | writing project descriptions in README.md and other markdown files                                                                                                      |
| `multiple-cursors` | editing a buffer using multiple cursors                                                                                                                                 |
| `org`              | write project documentation, organise tasks with[org-mode](https://orgmode.org/)                                                                                        |
| `spell-checking`   | spell checking using your Operating System spell checker (`SPC S s`)                                                                                                    |
| `syntax-checking`  | spell checking words as you type using [Fly Spell](https://www.emacswiki.org/emacs/FlySpell)                                                                            |
| `treemacs`         | visual file system browser (file explorer)                                                                                                                              |
| `version-control`  | general version control features, eg. ediff, fringe highlights                                                                                                          |

> ####WARNING::Install clj-kondo binary
>`clj-kondo` automatic linting requires the binary of `clj-kondo` installed on the operating system path in order to work.
> Please read the [clj-kondo install guide](https://github.com/borkdude/clj-kondo/blob/master/doc/install.md) for details.


## Edit .spacemacs and add layers

`SPC f e d` opens the `.spacemacs` configuration file (`M-m f e d` holy mode)

Use `SPC s s` and start typing `configuration-layers` to search for the `dotspacemacs-configuration-layers` section.  `RTN` to jump to the highlighted line, `C-j` to move down the matching lines, `C-k` to move up.

Add the following layers to `dotspacemacs-configuration-layers` ensuring there are no duplicates

```lisp
     (auto-completion :variables
                      auto-completion-enable-help-tooltip t
                      auto-completion-enable-snippets-in-popup t
                      auto-completion-enable-sort-by-usage t)
     (clojure :variables
              clojure-enable-linters 'clj-kondo)
     emacs-lisp
     (git :variables
          git-magit-status-fullscreen t
          magit-diff-refine-hunk 'all)
     github
     helm
     markdown
     multiple-cursors
     org
     spell-checking
     syntax-checking
     treemacs
     (version-control :variables
                      version-control-diff-tool 'diff-hl
                      version-control-global-margin t)
```

`SPC f s` to save the file.

`SPC q r` to restart Spacemacs which will load and configure all the new layers and their Emacs packages.


> #### Hint:: Optional layer features with :variables
> Using the `:variables` directive on layers allows you to include optional features and packages for a particular layer.
>
> In the Clojure layer the `clj-refactor` package is included by setting the variable `clojure-enable-clj-refactor` to true.  This provides specific refactor commands for the Clojure language.
>
> In the `version-control` layer The `:variables`  `git-gutter-use-fringe` to display changed lines in your working file in the fringe (margin) of the current buffer.
>
> I have not included the sayid debugger in this enhanced setup for Clojure as I find the `cider-debugger `, d b` sufficient.
>
> If you wish use extensive debugging for the whole project, then enable sayid by adding the variable `clojure-enable-sayid`.  So your layer definition for Clojure would look like:
```
     (clojure :variables
              clojure-enable-linters 'clj-kondo
              clojure-enable-sayid t
              clojure-enable-clj-refactor t)
```


## Reload Configuration or Restart Emacs

`SPC q r` to restart Emacs with the new configuration.  This is the recommended approach when making a big change or adding layers to ensure all the new packages are installed and configured.

For smaller changes you can reload the `~/.spacemacs` configuration using `SPC f e R`.


## Available Layers

`SPC h SPC` (or `M-m f e h` in holy mode) displays a list of all layers available in Spacemacs.  Type the layer name or scroll down (`C-j`) to a layer name and press `TAB` to preview the documentation for that layer or `RTN` to open the docs for that layer in a buffer.

![Helm layers](/images/spacemacs-helm-layers-list.png)

Create your own layers with `SPC SPC configuration-layer/create-layer`.  See the Spacemacs docs and [Configuring Spacemacs, a tutorial](http://thume.ca/howto/2015/03/07/configuring-spacemacs-a-tutorial/) for more information.


> #### Hint:: Spacemacs Clojure configuration example
>
> Trying to use packages-list-packages to install packages directly is simply ignored by Spacemacs.  See how to [configure a package without a layer](http://spacemacs.org/doc/DOCUMENTATION.html#without-a-layer) in the Spacemacs documentation.
>
> The Spacemacs menu system use a nemonic system for organising its menus and commands.  So to access a menu of file related commands, you press `SPC f` and for a menu of buffer commands you would use `SPC b`.
>
> The keybindings to open the **file** of the **emacs** **dotfile** (.spacemacs) are therefore: `SPC f e d`
