# Spacemacs Options

The first time Spacemacs starts up it will ask you several questions and then install the `~/.spacemacs` in your `HOME` directory.

This file allows you to manually add layers to Spacemacs, although as we will see layers can also be added automatically.

The `~/.spacemacs` configuration file is composed of three sections


* **dotspacemacs/layers** - add features to spacemacs using layers.  A layer can contain elisp configuration and packages from Melpa/Elpa.  Individual Emacs packages can also be added (if they do not exist in any layer)
* **dotspacemacs/init** - configuration applied when Spacemacs first starts, eg evil or holy mode(emacs), themes, fonts, full screen, recent files, etc
* **dotspacemacs/config** - additional layer configuration or your own customisations

The (emacs) keybindings for dotspacemacs are

| Spacemacs   | Emacs       | Description                                  |
|-------------|-------------|----------------------------------------------|
| `SPC f e d` | `M-m f e d` | open the `~/.spacemacs` file                 |
| `SPC f e R` | `M-m f e R` | reload the configuration from `~/.spacemacs` |

> Some changes in the `~/.spacemacs` file still require a restart of Emacs , especially when pulling in a large number of packages in a layer.


![Spacemacs configure layers](/images/spacemacs-configure-layers.png)

The init.el file has long been the entry point for your Emacs configuration with many different ways to setup an Emacs configuration.  With Spacemacs you have the `.spacemacs` file and layers, giving a very structured approach that is easy to follow.

> ####HINT:: For a complete overview, see the [dotfile configuration](http://spacemacs.org/doc/DOCUMENTATION.html#dotfile-configuration) section of the Spacemacs documentation.
