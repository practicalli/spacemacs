# Getting started with Spacemacs

1. Install prerequisites: [Emacs version 27.1](/before-you-start/install-emacs.md), [Java 17](/before-you-start/install-emacs.md) and the [Recommended Command Line tools](/before-you-start/recommended-command-line-tools.md).
2. [Clone or download Spacemacs](#clojure-spacemacs), removing `~/.emacs.d` if it already exists
3. [optional] [Install Fira Code font](#install-fira-code-font) (change `dotspacemacs-default-font` to a name of a font on your operating system in `.spacemacs.d/init.el` in step 4)
4.  [Clone the practicalli/spacemacs.d configuration](#clone-practicalli-spacemacs-configuration) to add common layers for Clojure development.  Or start Emacs and use the Spacemacs install wizard for basic config, follow the [manual configuration section](manual-configuration.md) for additional features.
5. [Add fonts for doom modeline theme](#adding-fonts-and-icons-for-doom-modeline)

{% youtube %}
https://youtu.be/rZNYLGw1qFk
{% endyoutube %}


## Clone Spacemacs
Use your favourite git client or the following command in a terminal window to clone the `develop` branch of Spacemacs:

```
git clone -b develop https://github.com/syl20bnr/spacemacs ~/.emacs.d
```

> ####Hint::Use Spacemacs develop branch until version 0.300 released
> Many features in this guide are only available in the `develop` branch of Spacemacs until version 0.300 of Spacemacs is released.
> The `develop` branch is stable enough to used for your daily work and contains fixes that will not be available in Spacemacs 0.200.


## Install Fira Code font
Why Fira Code?  It is an excellent mono-spaced font for code which includes [ligatures](https://github.com/tonsky/FiraCode#whats-in-the-box) that work with Emacs version 27.x and [many other features](https://github.com/tonsky/FiraCode#whats-in-the-box).

[practicalli/spacemacs.d]({{ book.P9ISpacemacsD }}) configuration uses Fira Code for Emacs as it provides Ligatures. The Fira Code font is optional, use whatever font you prefer so long as is installed in the operating system fonts.

![Fira Code font - ligatures for Emacs and Clojure code](/images/fira-code-font-ligatures-clojure.png)

[Install Fira Code](https://github.com/tonsky/FiraCode/wiki/Installing), preferably before using the [practicalli/spacemacs.d]({{ book.P9ISpacemacsD }}) configuration.

To use a different font when using the [practicalli/spacemacs.d]({{ book.P9ISpacemacsD }}), edit `.spacemacs.d/init.el` and update the value for `dotspacemacs-default-font` to a name of a font on your system.


##  Clone Practicalli Spacemacs configuration
Open [practicalli/spacemacs.d]({{ book.P9ISpacemacsD }}) GitHub website and fork the repository to your own account (this makes it easier to save your own configuration).

Clone your fork of Practicalli Spacemacs configuration to `.spacemacs.d` directory, substituting your own github account name for `my-github-account` in the command below.

```shell
git clone git@github.com:my-github-account/spacemacs.d.git ~/.spacemacs.d
```

Cloning the repository adds a `.spacemacs.d/init.el` configuration file which should be used instead of `~/.spacemacs`, so ensure a `.spacemacs` file does not exist before running Spacemacs.

Before running Emacs, [install Fira Code fonts](#install-fira-code-system-font) or update `dotspacemacs-default-font` value in  `.spacemacs.d/init.el` to a name of a font installed on the operating system.

### Version Control the Spacemacs Configuration

Using `~/.spacemacs.d` provides a simple way to version control your Spacemacs configuration, including snippets and layouts.  This is the approach taken with [practicalli/spacemacs.d]({{ book.P9ISpacemacsD }})

`.spacemacs.d/init.el` is the main configuration file, replacing `~/.spacemacs`  (if `.spacemacs` file exists when Emacs starts it will be used instead of `.spacemacs/init.el`)

> If the practicalli.spacemacs.d repository is not used, then a `.spacemacs` configuration file is created when Spacemacs first runs. Read the [additional configuration section](additional-configuration.md) to add support for Clojure and many other development tools.   The `.spacemacs` file can be backed up at a GitHub Gist, `SPC g g b`.

The `.spacemacs.d/init.el` configuration separates the Emacs settings into a `emacs-custom-setting` file within `.spacemacs.d`.  The `emacs-custom-setting` file only needs to be added to version control if the Emacs `customize` menu has been used to define different settings.

The `emacs-custom-file` is defined in the `dotspacemacs/user-init` of the Spacemacs configuration


```elisp
  (setq custom-file (file-truename (concat dotspacemacs-directory "emacs-custom-settings.el")))
  (load custom-file)
```

A specific path could also be used to define the location of the custom file: `(setq custom-file "~/.emacs.d/.cache/custom-settings")`


## Adding icon fonts for doom modeline
[practicalli/spacemacs.d]({{ book.P9ISpacemacsD }}) configuration uses the modern looking doom modeline theme, which requires a few fonts and icons.

`SPC SPC all-the-icons-install-fonts` once Spacemacs is running will install the fonts.  `SPC q r` to restart Spacemacs and see the finished results

![Spacemacs - doom-gruvbox-light theme - home and spacemacs config buffers](/images/spacemacs-doom-gruvbox-light-theme-examples-home-spacemacs-config.png)


## Spacemacs is ready for action
Spacemacs is now up and running and ready to take on the world.

If you already know how to use Spacemacs, jump to the [Clojure Projects section](/clojure-projects/index.md), otherwise look through the [Spacemacs Basics section](/spacemacs-basics/index.md) to learn how to use Vim style editing and work with files, buffers and windows in Spacemacs.
