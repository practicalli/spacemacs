# Getting started with Spacemacs

1. Install prerequisites: [Emacs version 26.3](/before-you-start/install-emacs.html), [Java 8 or 11](/before-you-start/install-emacs.html) and the [Recommended Command Line tools](/before-you-start/recommended-command-line-tools.md).
2. Clone or download the Spacemacs, first removing `~/.emacs.d` if it already exists.
3. Clone the [practicalli/spacemacs.d](https://github.com/practicalli/spacemacs.d/) configuration, or run the Spacemacs install wizard and follow the [additional configuration section](additional-configuration.md).

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


##  Clone Practicalli Spacemacs configuration
Open [practicalli/spacemacs.d](https://github.com/practicalli/spacemacs.d/) GitHub website and fork the repository to your own account (this makes it easier to save your own configuration).

Clone your fork of Practicalli Spacemacs configuration to `.spacemacs.d` directory, substituting your own github account name for `my-github-account` in the command below.

```shell
git clone git@github.com:my-github-account/spacemacs.d.git ~/.spacemacs.d
```

Cloning the repository adds a `.spacemacs.d/init.el` configuration file which should be used instead of `~/.spacemacs`, so ensure a `.spacemacs` file does not exist before running Spacemacs.


> #### Hint::Configuration options
> `.spacemacs.d/init.el` file is the recommended location for a Spacemacs configuration as the `.spacemacs.d` directory is a git repository, so its contents can be version controlled, including snippets, layouts, etc.
> If the practicalli.spacemacs.d repository is not used, then a `.spacemacs` configuration file is created when Spacemacs first runs. Read the [additional configuration section](additional-configuration.md) to add support for Clojure and many other development tools.   The `.spacemacs` file can be backed up at a GitHub Gist, `SPC g g b`.


## Adding fonts and icons for doom modeline
Practicalli/spacemacs.d configuration uses the modern looking doom modeline theme, which requires a few fonts and icons.

`SPC SPC all-the-icons-install-fonts` once Spacemacs is running will install the fonts.  `SPC q r` to restart Spacemacs and see the finished results

![Spacemacs - doom-gruvbox-light theme - home and spacemacs config buffers](/images/spacemacs-doom-gruvbox-light-theme-examples-home-spacemacs-config.png)


## Spacemacs is ready for action
Spacemacs is now up and running and ready to take on the world.

If you already know how to use Spacemacs, jump to the [Clojure Projects section](/clojure-projects/index.html), otherwise look through the [Spacemacs Basics section](/spacemacs-basics/index.html) to learn how to use Vim style editing and work with files, buffers and windows in Spacemacs.
