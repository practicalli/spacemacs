# Enhancing the Clojure experience

Adding the **clojure** layer provides a featured Clojure development experience, however, by a few other layers we can make the Clojure experience even better.

* **auto-completion**
* **git**
* **evil-cleverparens**
* **html**
* **javascript**
* **markdown**
* **org-mode**
* **syntax-checking**
* **version control**


## Adding and configuring layers

The layers used in Spacemacs are defined in the `dotspacemacs-configuration-layers` section of the `~/.spacemacs` configuration file.

Spacemacs provides a short-cut for opening the `.spacemacs` file:

`SPC f e d`  (or `M-m f e d` in Emacs mode)

> ####Hint::Nemonic keybindings and menus
> The Spacemacs menu system use a nemonic system for organising its menus and commands.  So to access a menu of file related commands, you press `SPC f` and for a menu of buffer commands you would use `SPC b`.
>
> The keybindings to open the **file** of the **emacs** **dotfile** (.spacemacs) are therefore: `SPC f e d`

Use `/` and start typing `configuration-layers` to search for the `dotspacemacs-configuration-layers` section.  `RTN` confirms the search text and `n` jumps to the next occurance, `N` jumps to the previous occurrence.

> ####Note::Edit .spacemacs and add layers
> Open the `.spacemacs` file and add the layers and configuration to `dotspacemacs-configuration-layers`
>
```lisp
   dotspacemacs-configuration-layers
   '(
     (auto-completion :variables
                      auto-completion-enable-help-tooltip t
                      auto-completion-enable-snippets-in-popup t
                      auto-completion-enable-sort-by-usage t)
     clojure
     emacs-lisp
     evil-cleverparens
     (git :variables
          git-magit-status-fullscreen t
          git-enable-github-support t
          git-gutter-use-fringe t)
     github
     (helm :variables
           helm-use-frame-when-more-than-two-windows nil)
     html
     javascript
     markdown
     neotree
     (org :variables
          org-enable-github-support t
          org-enable-reveal-js-support t)
     (shell :variables
            shell-default-shell 'multi-term
            shell-default-height 30
            shell-default-position 'bottom)
     spell-checking
     syntax-checking
     (version-control :variables
                      version-control-diff-tool 'diff-hl
                      version-control-global-margin t)
     yaml
    )
```


## Reload Configuration or Restart Emacs

You can either reload the `~/.spacemacs` configuration using `SPC f e R` or quit Emacs `C-x C-c` and restart Emacs again.

> Hint: If adding a new layer, I recommend restarting Emacs to ensure all the new packages are installed and configured.


## Available Layers

Using Helm is an easy way to see what layers are already available in Spacemacs, using the keyboard combo `M-m f e h`.  This gives you a list of all layers and if you hit return on any of the layer names you are taken to the docs for that layer.

![Helm layers](/images/spacemacs-helm-layers-list.png)

You can also create your own layers with `M-m configuration-layer/create-layer`.  See http://thume.ca/howto/2015/03/07/configuring-spacemacs-a-tutorial/ for more info as well as the Spacemacs docs.


> ####Hint::Spacemacs Clojure configuration example
[My Spacemacs configuration](https://gist.github.com/jr0cket/065ab83a0ddf6da9848d7847b7dd7704) is an example of which layers I use and how I have configured them.

> Trying to use packages-list-packages to install packages directly is simply ignored by Spacemacs.  See how to [configure a package without a layer](http://spacemacs.org/doc/DOCUMENTATION.html#without-a-layer) in the Spacemacs documentation.
