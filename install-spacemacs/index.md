# Getting started with Spacemacs

* [Install Emacs version 26.3 (or greater)](/before-you-start/install-emacs.html).
* Clone or download the Spacemacs, first removing `~/.emacs.d` if it already exists.
* Clone the [practicalli/spacemacs.d](https://github.com/practicalli/spacemacs.d/) configuration, or run the Spacemacs install wizzard.

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

This configuration is used instead of `~/.spacemacs`, so ensure no file of that name exists before running Spacemacs.


## Spacemacs is ready for action

Spacemacs is now up and running and ready to take on the world.

If you already know how to use Spacemacs, jump to the [Clojure Projects section](/clojure-projects/index.html), otherwise look through the [Spacemacs Basics section](/spacemacs-basics/index.html) to learn how to use Vim style editing and work with files, buffers and windows in Spacemacs.
