# Using Termux

Start Termux app and a terminal prompt is shown, along with the standard Android software keyboard.  An extended keyboard is provided with common key bindings for the command line interface (Tab, Esc, Ctrl, arrow keys, etc.).

![Termux startup with Software and Extended keyboards](https://raw.githubusercontent.com/practicalli/graphic-design/live/termux/termux-startup-tablet.jpeg)


## Keyboards

Termux provides an extended keyboard with key combinations not possible with the Android software keyboard, i.e `Ctrl-c`, arrow keys, etc.  `TAB` is especially useful for driving command and filename completion.

`Volume Up + q` toggles the extended keyboard, so more screen is available when using a hardware keyboard.

Connect a hardware keyboard for the best experience, e.g the [Keyboard.io atreus](https://shop.keyboard.io/products/keyboardio-atreus) is an excellent and highly portable mechanical keyboard. The software keyboard is automatically switched off when a hardware keyboard is connected, although the extended keyboard is still displayed by default.


## Adjusting Font size

Pinch the screen inwards to zoom out making the text font smaller.

Pinch the screen outwards to zoom in making the text font larger.


## Termux menus

Termux has three menus: A context menu, navigation drawer and Termux section of the Android notification.

The **context menu** is shown by a long press anywhere on the terminal screen:

* `Select` and `Paste` text to share text with other applications
* `Reset` the terminal if it gets stuck or `Hangup` to exit the current terminal session
* `Style` the terminal by selecting a font and a color scheme

The **navigation drawer** is shown by swiping inwards from the left of the screen

* list and select terminal sessions, set a name for a session with a long press
* A button to toggle visibility of the touch keyboard.
* A button to create new terminal sessions (long press for creating a named session or a fail-safe one).

> If gesture navigation is enabled in Android, hold the edge of the screen briefly before swiping to bring up the navigation drawer


The **Android notification menu** contains a Termux section. Press the Termux section to show the current terminal session or expand the Termux section to exiting all running terminal sessions or aquire a wake lock to avoid Termux entering sleep mode. A wake lock allows server and other background processes to run reliably and to continue to receive notifications


## Package management

Termux provides a Linux command line experience, providing a wide range of Unix tools and development environments.  Termux uses a Debian based system and packages are easily installed

* `apt install` add tools and libraries to the Linux environment from the curated packages in the software center
* `apt update` updates the list of packages fromhe software center
* `apt list --upgradable` shows list of packages with new versions
* `apt upgrade` install new versions of currently installed packages
* `apt-cache search --names-only` - search for packages that include a specific pattern in their name.
* `apt-cache show` - shows detail of the supplied package name, including a description

> `pkg` is an alias for `apt`, the advance package tool, although there seems little benefit to using pkg if familiar with apt (they are both 3 characters)



## Byobu terminal tab manager

Byobu is an alternative to Termux provides a single terminal prompt. Byobu provides multiple shell prompts, allowing individual Clojure tools and editors to be run from the Termux prompt simultaneously.  Practicalli uses byobu to run Neovim, a Clojure REPL and unit test watcher in separate byobu tabs with the ability to add further tabs for other command line tools.

```
pkg install byobu
```

* `F2` to create a new tab
* `F3` to select previous tab
* `F4` to select next tab

`byobu-enable` command will configure the current shell to run byobu on startup.  Test this is working by typing `exit` in Termux and start Termux app again. `byobu-disable` stops this behaviour and byobu will need to be run manually after starting Termux.

> Run the `byobu-enable` command again if zsh is configured after this step or if adding any other shell to Termux.
