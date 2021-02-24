# Command Line Shell withn Spacemacs

No need to leave Spacemacs and open up a terminal window if you want to run commands.  You can simply run a shell in a buffer.  This can be the standard shell or the emacs shell, called `eshell`

## Adding the shell layer 

The shell & eshell commands are availble in the `shell` layer.  Edit the `~/.spacemacs.el` file and in the function `dotspacemacs/layers` and the definition `dotspacemacs-configuration-layers` add the name `shell`


## Running a shell 

A simple shell can be run with the `shell` function.  This `shell` function opens a new buffer with a shell prompt and displays that buffer, replacing the currently hightlighted buffer.


## Configuring the shell layer 

By default the `shell` commands will run the standard shell.  You can add a variable to the shell layer to specify a default shell to run.

```elisp
     (shell :variables
            shell-default-shell 'eshell) 
```

You can also specify variables to set a particular size and location for the shell buffer to open.  In this example the shell will be 30 lines high and appear across the bottom of the current Spacemacs frame.

```elisp
     (shell :variables
            shell-default-shell 'eshell
            shell-default-height 30
            shell-default-position 'bottom)     ;; SPC ' opens eshell in popup at bottom of Spacemacs
```


## A shell pop-up 

You can also use a popup shell buffer that can be easily toggled to show and hide at the press of a keybindin, using the `spacemacs/shell-pop-default` fuction.  This save you searching for your shell buffer and hides it away quickly when you dont need it.

* `SPC '` - evil mode
* `M-m '` - holy mode

> I typicaly use the shell pop-up for actions such as cloning a new repository (could use the github layer for that), changing file permissions, **creating Leiningen projects for Clojure**


