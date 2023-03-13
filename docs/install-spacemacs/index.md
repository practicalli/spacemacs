# Install Spacemacs

[Install prerequisites: Emacs, Java 17, Clojure CLI and Command Line tools ](/spacemacs/install-spacemacs/pre-install/){.md-button}

1. [Clone or download Spacemacs](#clojure-spacemacs), removing `~/.emacs.d` if it already exists
2. [Clone the practicalli/spacemacs.d configuration](#clone-practicalli-spacemacs-configuration) to add common layers for Clojure development.  Or start Emacs and use the Spacemacs install wizard for basic config, follow the [manual configuration section](manual-configuration/) for additional features.
3. [optional] [Install Fira Code font](#install-fira-code-font) (change `dotspacemacs-default-font` to a name of a font on your operating system in `.spacemacs.d/init.el` in step 4)
4. [Install All The Icons fonts for doom modeline theme](#all-the-icon-fonts)

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

Clone [practicalli/spacemacs.d](https://github.com/practicalli/spacemacs.d) configuration or first create a fork and clone that fork


=== "Free Desktop XDG config"
    Using SSH
    ```shell
    git clone git@github.com:practicalli/spacemacs.d.git ~/.config/spacemacs
    ```


    Using HTTPS
    ```shell
    git clone https://github.com/practicalli/spacemacs.d ~/.config/spacemacs
    ```

    `~/.config/spacemacs/init.el` is the main configuration file, ensure `~/.spacemacs` file does not exist as that file would take precedence.


=== "Classic config"
    Using SSH
    ```shell
    git clone git@github.com:practicalli/spacemacs.d.git ~/.spacemacs.d
    ```

    Using HTTP
    ```shell
    git clone https://github.com/practicalli/spacemacs.d ~/.spacemacs.d
    ```

    `~/.spacemacs.d/init.el` is the main configuration file, ensure `~/.spacemacs` file does not exist as that file would take precedence.


??? INFO "Emacs custom settings"
    `.spacemacs.d/init.el` configuration separates Emacs custom settings into a `emacs-custom-setting` file.  `emacs-custom-setting` should be added to version control if the Emacs `customize` menu has been used to define settings.
    `emacs-custom-file` is defined in the `dotspacemacs/user-init` of the Spacemacs configuration
    ```elisp
      (setq custom-file (file-truename (concat dotspacemacs-directory "emacs-custom-settings.el")))
      (load custom-file)
    ```
    A specific path could also be used to define the location of the custom file: `(setq custom-file "~/.emacs.d/.cache/custom-settings")`


## Install Fira Code font

[Install Fira Code](https://github.com/tonsky/FiraCode/wiki/Installing){target=_blank .md-button}

[practicalli/spacemacs.d](https://github.com/practicalli/spacemacs.d) uses Fira Code, a mono-spaced font designed for source code and includes [ligatures](https://github.com/tonsky/FiraCode#whats-in-the-box) and [many other features](https://github.com/tonsky/FiraCode#whats-in-the-box).

![Fira Code font - ligatures for Emacs and Clojure code](https://raw.githubusercontent.com/practicalli/graphic-design/live/clojure/fira-code-font-clojure-ligatures.png)

!!! HINT "Use a different font with practicalli/spacemacs.d"
    To use a different font when using the [practicalli/spacemacs.d](https://github.com/practicalli/spacemacs.d), edit `.spacemacs.d/init.el` and update the value for `dotspacemacs-default-font` to a name of a font on your system.




## All The Icon Fonts

[practicalli/spacemacs.d](https://github.com/practicalli/spacemacs.d){target=_blank} configuration uses the modern looking doom modeline theme, which requires a few fonts and icons.

`SPC SPC all-the-icons-install-fonts` once Spacemacs is running will install the fonts.

++spc++ ++"q"++ ++"r"++ to restart Spacemacs and see the finished results

![Spacemacs - doom-gruvbox-light theme - home and spacemacs config buffers](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-doom-gruvbox-light-theme-examples-home-spacemacs-config.png)


## Spacemacs is ready for action

Spacemacs is now up and running and ready to take on the world.

If you already know how to use Spacemacs, jump to the [Clojure Projects section](/spacemacs/clojure-projects/), otherwise look through the [Spacemacs Basics section](/spacemacs/spacemacs-basics/) to learn how to use Vim style editing and work with files, buffers and windows in Spacemacs.
