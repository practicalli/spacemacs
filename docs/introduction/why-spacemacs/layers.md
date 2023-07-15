# Simple Layers and Configuration

Programming language support and a vast array of tools can be added to Emacs from the many hundreds of packages created by the community. 

Spacemacs uses Layers that organise packages and configuration to make those packages work seamlessly together.  For example, the Clojure layer is composed of 9 different packages that you would otherwise have to be manually installed and configured to work together.  

Add the name of a layer to the Spacemacs configuration file and Spacemacs will manage everything else.



??? HINT "Butterfly"
    `SPC SPC butterfly` to activate in Spacemacs.  Use this great power very carefully.

    [![Emacs - butterfly mode](https://imgs.xkcd.com/comics/real_programmers.png)](https://imgs.xkcd.com/comics/real_programmers.png){loading=lazy}


## Simple Configuration

Spacemacs provides a well tested and comprehensive configuration, provides lots of sensible defaults.

`~/.spacemacs` file is generated during the Spacemacs installation if a configuration does not already already exist  

`~/.spacemacs.d/init.el` or `SPACEMACSDIR/init.el` are valid locations for a Spacemacs configuration and as they are directories they are easier to manage changes via version control.

The three important sections of the Spacemacs user configuration file:

| Section                      | Purpose                                                                                                                                                                                                                               |
|------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **dotspacemacs/layers**      | Layers provide a simple way to add language support and tooling to Spacemacs.  A layer can contain elisp configuration and packages from Melpa/Elpa.  Individual Emacs packages can also be added (if they do not exist in any layer) |
| **dotspacemacs/init**        | configuration applied when Spacemacs first starts, eg evil or holy mode(emacs), themes, fonts, full screen, recent files, etc                                                                                                         |
| **dotspacemacs/user-config** | Add your own customisation here using Elisp code                                                                                                                                                                                      |

!!! INFO "Spacemacs dotfile configuration"
    [:globe_with_meridians: dotfile configuration](http://develop.spacemacs.org/doc/DOCUMENTATION.html#dotfile-configuration) details installation and syncronisation options 


## Opening and reloading the configuration file

Spacemacs provides specific keybindings for opening and reloading the `~/.spacemacs` configuration file.

| Vim Normal  | Emacs       | Description                                  |
|-------------|-------------|----------------------------------------------|
| `SPC f e d` | `M-m f e d` | open the Spacemacs user configuration file   |
| `SPC f e R` | `M-m f e R` | reload the Spacemacs user configuration      |

!!! HINT "Restart after changing configuration"
    `SPC q r` after changes to the Spacemacs configuration file is recommended, especially after significant changes, e.g. adding multiple layers 

    `SPC F e R` to update the Spacemacs configuration without restarting Emacs.


## Adding a Layer

Open the Spacemacs user configuration file and add the name of the layer required in the section `dotspacemacs-configuration-layers`.  

Add Layer variables to change the default configuraiton, wrapping the layer name in a list.

```elisp title="Spacemacs Configuration - Clojure layer with layer variables"
(clojure :variables
         ;; clojure-backend 'cider                 ; use cider and disable lsp
         clojure-enable-kaocha-runner t            ; enable Kaocha test runner
         cider-repl-display-help-banner nil        ; disable help banner
         cider-print-fn 'puget                     ; pretty printing with sorted keys / set values
         clojure-indent-style 'align-arguments
         clojure-align-forms-automatically t
         clojure-toplevel-inside-comment-form t    ; clashes with LSP
         ;; cider-result-overlay-position 'at-point   ; results shown right after expression
         ;; cider-overlays-use-font-lock t
         cider-font-lock-dynamically nil           ; prefer LSP semantic tokens
         cider-eldoc-display-for-symbol-at-point nil ; prefer LSP
         cider-prompt-for-symbol nil
         cider-repl-buffer-size-limit 100          ; limit lines shown in REPL buffer
         nrepl-use-ssh-fallback-for-remote-hosts t ; connect via ssh to remote hosts
         )
```

See the Spacemacs documentation for a [list of layers](http://spacemacs.org/layers/LAYERS.html) or open the help in Spacemacs `SPC h SPC` to list all the layers, pressing `RET` on a layer name to read about it.


## Available Layers

`SPC h l` (or `M-m h l` in holy mode) displays a list of all layers available in Spacemacs.  Type the layer name or scroll down (`C-j`) to a layer name and press `TAB` to preview the documentation for that layer or `RTN` to open the docs for that layer in a buffer.

![Help layers - Helm list](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/menus/spacemacs-help-layer-list-light.png?raw=true#only-light)
![Help layers - Helm list](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/menus/spacemacs-help-layer-list-dark.png?raw=true#only-dark)

Create your own layers with `SPC SPC configuration-layer/create-layer`.  See the Spacemacs docs and [:globe_with_meridians: Configuring Spacemacs, a tutorial](http://thume.ca/howto/2015/03/07/configuring-spacemacs-a-tutorial/) for more information.


## Existing Emacs users

Consider the Spacemacs user configuration file as a replacement for the `init.el` file that would otherwise be use to define an Emacs configuration.

Installing packages via the `packages-list-packages` method is ignored by Spacemacs.  Any packages installed in this way will be ignored and deleted on Emacs startup.

If a desired package is not included in any layer, [:globe_with_meridians: a package can be used without a layer](http://spacemacs.org/doc/DOCUMENTATION.html#without-a-layer).

**dotspacemacs/user-config** section of the Spacemacs user configuration file should contain personal Emacs Lisp configuration and is the last section of the Spacemacs configuration to load.

