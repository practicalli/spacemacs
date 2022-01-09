# Getting started with Spacemacs

1. Install prerequisites: [Emacs version 27.1](/before-you-start/install-emacs.md), [Java 11](/before-you-start/install-emacs.md) and the [Recommended Command Line tools](/before-you-start/recommended-command-line-tools.md).
2. Clone or download the Spacemacs, first removing `~/.emacs.d` if it already exists.
3. [optional] Install Fira Code fonts (change `dotspacemacs-default-font` to a name of a font on your operating system in `.spacemacs.d/init.el` in step 4)
4. Clone the [practicalli/spacemacs.d]({{ book.P9ISpacemacsD }}) configuration, or run the Spacemacs install wizard and follow the [additional configuration section](additional-configuration.md).
5. Add [fonts for modeline theme](#adding-fonts-and-icons-for-doom-modeline)

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


##  Clone Practicalli Spacemacs configuration
Open [practicalli/spacemacs.d]({{ book.P9ISpacemacsD }}) GitHub website and fork the repository to your own account (this makes it easier to save your own configuration).

Clone your fork of Practicalli Spacemacs configuration to `.spacemacs.d` directory, substituting your own github account name for `my-github-account` in the command below.

```shell
git clone git@github.com:my-github-account/spacemacs.d.git ~/.spacemacs.d
```

Cloning the repository adds a `.spacemacs.d/init.el` configuration file which should be used instead of `~/.spacemacs`, so ensure a `.spacemacs` file does not exist before running Spacemacs.

Before running Emacs, [install Fira Code fonts](#install-fira-code-system-font) or update `dotspacemacs-default-font` value in  `.spacemacs.d/init.el` to a name of a font installed on the operating system.

> #### Hint::Configuration options
> `.spacemacs.d/init.el` file is the recommended location for a Spacemacs configuration as the `.spacemacs.d` directory is a git repository, so its contents can be version controlled, including snippets, layouts, etc.
> If the practicalli.spacemacs.d repository is not used, then a `.spacemacs` configuration file is created when Spacemacs first runs. Read the [additional configuration section](additional-configuration.md) to add support for Clojure and many other development tools.   The `.spacemacs` file can be backed up at a GitHub Gist, `SPC g g b`.


## Install Fira Code system font
[practicalli/spacemacs.d]({{ book.P9ISpacemacsD }}) configuration uses Fira Code as the default font for Emacs. This is optional, you can use what ever font you prefer, however, the font used in the configuration should be installed in the operating system fonts.

[Install Fira Code](https://github.com/tonsky/FiraCode/wiki/Installing), preferably before using the [practicalli/spacemacs.d]({{ book.P9ISpacemacsD }}) configuration.

To use a different font when using the [practicalli/spacemacs.d]({{ book.P9ISpacemacsD }}), edit `.spacemacs.d/init.el` and update the value for `dotspacemacs-default-font` to a name of a font on your system.

Why Fira Code?  It is an excellent mono-spaced font for code which includes [ligatures](https://github.com/tonsky/FiraCode#whats-in-the-box) that work with Emacs version 27.x and [many other features](https://github.com/tonsky/FiraCode#whats-in-the-box).

![Fira Code font - ligatures for Emacs and Clojure code](/images/fira-code-font-ligatures-clojure.png)


## Adding icon fonts for doom modeline
[practicalli/spacemacs.d]({{ book.P9ISpacemacsD }}) configuration uses the modern looking doom modeline theme, which requires a few fonts and icons.

`SPC SPC all-the-icons-install-fonts` once Spacemacs is running will install the fonts.  `SPC q r` to restart Spacemacs and see the finished results

![Spacemacs - doom-gruvbox-light theme - home and spacemacs config buffers](/images/spacemacs-doom-gruvbox-light-theme-examples-home-spacemacs-config.png)


## Spacemacs is ready for action
Spacemacs is now up and running and ready to take on the world.

If you already know how to use Spacemacs, jump to the [Clojure Projects section](/clojure-projects/index.md), otherwise look through the [Spacemacs Basics section](/spacemacs-basics/index.md) to learn how to use Vim style editing and work with files, buffers and windows in Spacemacs.
