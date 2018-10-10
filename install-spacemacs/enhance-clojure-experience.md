# Enhancing the Clojure experience

Adding the **clojure** layer provides a Clojure development experience based on [CIDER](https://docs.cider.mx)

We can make the development experience even better by adding a few more layers and some optional packages for the clojure layer:

Layers are defined in the `dotspacemacs-configuration-layers` section of the `~/.spacemacs` configuration file.

| Layer name        | Description                                                                                                                                                           |
|-------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `auto-completion` | to complete  names of functions, symbols, etc.                                                                                                                        |
| `clojure`         | [CIDER](https://docs.cider.mx) with [clj-refactor](https://github.com/clojure-emacs/clj-refactor.el/wiki) and [sayid](http://clojure-emacs.github.io/sayid/) debugger |
| `git`             | git version control with [Magit](https://magit.vc/)                                                                                                            |
| `markdown`        | writing project descriptions in README.md and other markdown files                                                                                                    |
| `org-mode`        | write project documentaion, organise tasks                                                                                                                            |
| `syntax-checking` | spell checking words as you type                                                                                                                                      |
| `version control` | general version control features, eg. diff margins                                                                                                                    |

> ####Note::Edit .spacemacs and add layers
> Open the `.spacemacs` file via `SPC f e d`  (`M-m f e d` Emacs state)
>
> Use `/` and start typing `configuration-layers` to search for the `dotspacemacs-configuration-layers` section.  `RTN` confirms the search text and `n` jumps to the next occurance, `N` jumps to the previous occurrence.
>
> Add the following layers to `dotspacemacs-configuration-layers`
>
```lisp
   dotspacemacs-configuration-layers
   '(
     (auto-completion :variables
                      auto-completion-enable-help-tooltip t
                      auto-completion-enable-snippets-in-popup t
                      auto-completion-enable-sort-by-usage t)
     (clojure :variables
              clojure-enable-sayid t
              clojure-enable-clj-refactor t)
     emacs-lisp
     (git :variables
          git-magit-status-fullscreen t
          git-enable-github-support t
          git-gutter-use-fringe t)
     helm
     markdown
     neotree
     org
     spell-checking
     syntax-checking
     (version-control :variables
                      version-control-diff-tool 'diff-hl
                      version-control-global-margin t)
    )
```

------------------------------------------

> #### Hint:: Configuring layers with :variables
> Using the `:variables` directive on layers allows you to add features from named packages, e.g. `clojure-enable-sayid` to include the Sayid debugger when opening Clojure projects.
>
> `:variables` also allow you to configure options for layers, e.g. `git-gutter-use-fringe` to display changed lines in your working file in the fringe (margin) of the current buffer.



## Reload Configuration or Restart Emacs

You can either reload the `~/.spacemacs` configuration using `SPC f e R` or quit Emacs `C-x C-c` and restart Emacs again.

I recommend restarting Emacs to ensure all the new packages are installed and configured.


## Available Layers

`SPC h SPC` (or `M-m f e h` in Emacs state) displays a list of all layers available in Spacemacs.  Type the layer name or scroll down (`C-j`) to a layer name and press `TAB` to preview the documentation for that layer or `RTN` to open the docs for that layer in a buffer.

![Helm layers](/images/spacemacs-helm-layers-list.png)

Create your own layers with `SPC SPC configuration-layer/create-layer`.  See the Spacemacs docs and [Configuring Spacemacs, a tutorial](http://thume.ca/howto/2015/03/07/configuring-spacemacs-a-tutorial/) for more information.


> #### Hint:: Spacemacs Clojure configuration example
[My Spacemacs configuration](https://gist.github.com/jr0cket/065ab83a0ddf6da9848d7847b7dd7704) is an example of which layers I use and how I have configured them.
>
> Trying to use packages-list-packages to install packages directly is simply ignored by Spacemacs.  See how to [configure a package without a layer](http://spacemacs.org/doc/DOCUMENTATION.html#without-a-layer) in the Spacemacs documentation.

------------------------------------------

> #### Hint:: Mnemonic keybindings and menus
> The Spacemacs menu system use a nemonic system for organising its menus and commands.  So to access a menu of file related commands, you press `SPC f` and for a menu of buffer commands you would use `SPC b`.
>
> The keybindings to open the **file** of the **emacs** **dotfile** (.spacemacs) are therefore: `SPC f e d`
