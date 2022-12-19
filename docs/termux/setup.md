# Termux Setup

Launch Termux via its application icon.  A black terminal screen will appear with a bash shell prompt.


## Update packages

Check for new packages and update them all

```
package upgrade -y
```

If you wish to first check the packages that will be updated, use `pkg --list-upgradable`

`termux-change-repo` to select a specific region to minimise the number of mirrors checked during package upgrades, especially useful if on a limited data plan.

![Termux Mirrors selection - Europe](https://raw.githubusercontent.com/practicalli/graphic-design/live/termux/termux-mirrors-select-europe.png)

> At time of writing, the Termux package on F-Droid was around 6 months old so there will be a number of packages that should be updated before any further installation steps are undertaken.


## Configure Freedesktop.org XDG locations

`nano ~/.profile` to edit the `~/.profile` file, adding export directives to set the XDG locations:

```bash
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state
export XDG_CACHE_HOME=$HOME/.cache

# Set XDG location of Emacs Spacemacs configuration
export SPACEMACSDIR="$XDG_CONFIG_HOME/spacemacs"
```

`source ~/.profile` to load the environment variables into the shell, or exit Termux and restart.

!!! Hint "nano editor installed by default"
    `nano` editor is used to edit the commands as the package is installed by default in termux. `vim`, `neovim`, `emacs` or any other Linux command line editor can be used if the package is first installed.  Termux will list packages to install when trying to run a command that is from a package not yet installed.


## Tools to download binaries and configuration

Many tools can be installed via the `pkg` tool, although specific Clojure tools and configuration require additional tools:

* `wget` and `curl` - download tools not packaged, i.e. clojure-lsp binary
* `git` - clone configuration files and projects (see Git version control section)
* `openssh` - SSH service and tools to generate SSH keys

```
pkg install curl wget git openssh
```

[Configure a Git Identify and SSH key](git.md) to before committing and pushing changes, or cloning repositories using the SSH protocol.  [practicalli/dotfiles](https://github.com/practicalli/dotfiles){target=_blank} contains example configuration, ignore patterns and commit template for using Git.


## [Optional] Configure Termux Settings

`nano ~/.termu/termux.properties` to configure the default settings for termux.

`termux-reload-settings` if any of the values are set (restarting Termux is not enough to load setting changes)

The defaults are suitable for the majority of uses, although you may wish to consider:

* `fullscreen` set to `true` to us the whole screen, hiding Android menu bars, etc.
* `hide-soft-keyboard-on-startup` set to `true` if always using a physical keyboard
* `default-working-directory` to save files user files and directories in an alternative location,

> If swiping from left edge of the screen is already taken, set key bindings for creating a new termux session, naming a session and switching between sessions.  Alternatively, use byobu to create and switch between its tabs for multiple terminal sessions.


## Set Color Scheme and Font

The Termux:Styling plug provides menus for selecting terminal color scheme and font to use

Press and hold on the Termux screen to show the context menu and select the **Style** menu.  On smaller screens select **More > Style**

> If Termux:Styling plugin was not installed, a prompt will display asking if the plugin should be installed

A menu appears with **Choose Color** and **Choose Font**

Select **Choose Color** to select from the available list of colour schemes, e.g. Gruvbox Dark or Gruvbox Light

`~/.termux/colors.properties` file is added when selecting a colour scheme, defining Hex colors from the theme selected.

Select **Choose Font** to select from the available fonts, e.g. FiraCode or Ubuntu

`~/.termux/font.ttf` font file is added when selecting a font.

!!! INFO "Termux:Styling uses [NerdFonts](https://www.nerdfonts.com/){target=_blank} for icons"
    All fonts installed via `Termux:Styling` have been patched with [NerdFonts](https://www.nerdfonts.com/), providing several thousand icons to use within the terminal prompt and Neovim itself (e.g. VimDevIcons).
