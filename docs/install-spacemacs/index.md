# Install Spacemacs

[Install prerequisites: Emacs, Java 17, Clojure CLI and Command Line tools ](/spacemacs/install-spacemacs/pre-install/){.md-button}

1. [Clone or download Spacemacs](#clone-spacemacs), first removing `~/.emacs.d` if it exists
2. [Clone practicalli/spacemacs-config user configuration](#clone-practicalli-spacemacs-configuration).  Or start Emacs and use the Spacemacs install wizard, follow the [manual configuration section](manual-configuration/)
3. [Install Fira Code font](#install-fira-code-font) (or update `dotspacemacs-default-font` to a name of a font on your operating system in the Spacemacs user configuration)
4. [Install All The Icons fonts ](#all-the-icon-fonts) to support the doom modeline theme

<p style="text-align:center">
<iframe width="560" height="315" src="https://www.youtube.com/embed/rZNYLGw1qFk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</p>


## Clone Spacemacs

Use your favourite git client or the following command in a terminal window to clone Spacemacs:

=== "Free Desktop XDG config"
    ```
    git clone https://github.com/syl20bnr/spacemacs ~/.config/emacs
    ```

=== "Classic config"
    ```
    git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
    ```

##  Clone Practicalli Spacemacs configuration

Clone [:fontawesome-brands-github: practicalli/spacemacs-config](https://github.com/practicalli/spacemacs-config) configuration or first create a fork and clone that fork

=== "Free Desktop XDG config"
    Using SSH
    ```shell
    git clone git@github.com:practicalli/spacemacs-config.git ~/.config/spacemacs
    ```

    Using HTTPS
    ```shell
    git clone https://github.com/practicalli/spacemacs-config ~/.config/spacemacs
    ```
    `~/.config/spacemacs/init.el` is the main configuration file, ensure `~/.spacemacs` file does not exist as that file would take precedence.


    Set the `SPACEMACSDIR` environment variable to the `~/.config/spacemacs` directory so that Spacemacs will find this location.  Add to `~/.profile` to support launching Emacs from a desktop launcher and the shell configuration, e.g. `~/.bashrc` for bash, `~/.zshenv` for Zshell.
    ```shell title="SPACEMACSDIR and XDG configurations"
    export XDG_CONFIG_HOME=$HOME/.config
    export XDG_DATA_HOME=$HOME/.local/share
    export XDG_STATE_HOME=$HOME/.local/state
    export XDG_CACHE_HOME=$HOME/.cache

    # Set XDG location of Emacs Spacemacs configuration
    export SPACEMACSDIR="$XDG_CONFIG_HOME/spacemacs"
    ```

=== "Classic config"
    Using SSH
    ```shell
    git clone git@github.com:practicalli/spacemacs-config.git ~/.spacemacs.d
    ```

    Using HTTP
    ```shell
    git clone https://github.com/practicalli/spacemacs-config ~/.spacemacs.d
    ```

    `~/.spacemacs.d/init.el` is the main configuration file, ensure `~/.spacemacs` file does not exist as that file would take precedence.


??? INFO "Emacs custom settings"
    `init.el` configuration separates Emacs custom settings into a `emacs-custom-setting` file.  `emacs-custom-setting` should be added to version control if the Emacs `customize` menu has been used to define settings.
    `emacs-custom-file` is defined in the `dotspacemacs/user-init` of the Spacemacs configuration
    ```elisp
      (setq custom-file (file-truename (concat dotspacemacs-directory "emacs-custom-settings.el")))
      (load custom-file)
    ```
    A specific path could also be used to define the location of the custom file: `(setq custom-file "~/.emacs.d/.cache/custom-settings")`


## Install Fira Code font

[:fontawesome-brands-github: Install Fira Code](https://github.com/tonsky/FiraCode/wiki/Installing){target=_blank .md-button}

[:fontawesome-brands-github: practicalli/spacemacs-config](https://github.com/practicalli/spacemacs-config) uses Fira Code, a mono-spaced font designed for source code and includes [:fontawesome-brands-github: ligatures](https://github.com/tonsky/FiraCode#whats-in-the-box) and [:fontawesome-brands-github: many other features](https://github.com/tonsky/FiraCode#whats-in-the-box).

![Fira Code font - ligatures for Emacs and Clojure code](https://github.com/practicalli/graphic-design/blob/live/clojure/fira-code-font-clojure-ligatures.png?raw=true)

!!! HINT "Use a different font with practicalli/spacemacs-config"
    To use a different font when using the [:fontawesome-brands-github: practicalli/spacemacs-config](https://github.com/practicalli/spacemacs-config), edit `init.el` and update the value for `dotspacemacs-default-font` to a name of a font on your system.


## Emacs Packages

Spacemacs automatically downloads and compiles Emacs packages when Emacs is run.

If Emacs supports native compilation, then the compilation process can take longer, although Emacs should run many tasks faster or more efficiently.

++spc++ ++"a"++ ++"p"++ opens `proced` showing active Emacs processes, such as native compilation




## Icon Fonts

[:fontawesome-brands-github: practicalli/spacemacs-config](https://github.com/practicalli/spacemacs-config){target=_blank} configuration uses the modern looking doom modeline theme, which requires fonts icons.

Once Spacemacs is running, issue the following commands to install a wide range of fonts.

- `SPC SPC all-the-icons-install-fonts`
- `SPC SPC nerd-icons-install-fonts`

++spc++ ++"q"++ ++"r"++ to restart Spacemacs and see the finished results

![Spacemacs - doom-gruvbox-light theme example](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-theme-doom-gruvbox-example-light.png?raw=true#only-light)
![Spacemacs - doom-gruvbox-light theme example](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-theme-doom-gruvbox-example-dark.png?raw=true#only-dark)


## Spacemacs ready for action

Spacemacs is now up and running and ready to take on the world.

Already know how to use Spacemacs? jump to the [:fontawesome-solid-book-open: Clojure Projects section](/spacemacs/clojure-projects/)

Otherwise look through the [:fontawesome-solid-book-open: Spacemacs Basics section](/spacemacs/spacemacs-basics/) to learn how to use Vim style editing and work with files, buffers and windows in Spacemacs.
