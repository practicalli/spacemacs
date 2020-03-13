# emacsclient and persistent server

`emacsclient` will instantly open files in Emacs.

Emacs persistent server will run in the background, even when Emacs is not running, listening for requests to open files.

As a heavy Vim user or otherwise spending most of your time in a terminal window, you will benefit from configuring Emacs to have a persistent server and opening files from the command line with `emacsclient`.

> #### Hint::Run Spacemacs once per OS login
> Emacs is typically run once and kept open, as its feature rich enough to do all your from Emacs.  Therefore the few seconds startup time is no seen as an issue.

## Configure Emacs persistent server

`SPC f e d` to edit your `.spacemacs` configuration

Set `dotspacemacs-enable-server` and `dotspacemacs-persistent-server` to `t` (true).

```elisp
   ;; If non-nil, start an Emacs server if one is not already running.
   ;; (default nil)
   dotspacemacs-enable-server t

   ;; Set the emacs server socket location.
   ;; If nil, uses whatever the Emacs default is, otherwise a directory path
   ;; like \"~/.emacs.d/server\". It has no effect if
   ;; `dotspacemacs-enable-server' is nil.
   ;; (default nil)
   dotspacemacs-server-socket-dir nil

   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server t


```

## Configure emacsclient for Git commit messages
Configure the `core.editor` property with `emacsclient` to open Emacs for editing Git commit messages (assuming you do not specify the `-m "commit message"`option to the `git` command).

You can run `emacsclient` in one of several ways (try these approaches until you find which one workd best for your operating system).

1) in the same terminal as your `git` command, preferably with Emacs persistent server running.

```shell
git config --global core.editor "emacsclient --tty"
```

2) create a new Emacs frame, if you have Emacs persistent server running.

```shell
git config --global core.editor "emacsclient --no-wait --create-frame"
```

3) open in an existing Emacs application, if you are always running Emacs.

```shell
git config --global core.editor "emacsclient --no-wait"
```

4) Running Emacs as a daemon

```shell
git config --global core.editor "emacsclient --alternate-editor"
```

Or configure an operating system environment variable called `ALTERNATE_EDITOR` as an empty string, `""`, which will call `emacs --daemon` if emacs is not running.


> #### Hint::Beware of old Emacs installs shipped with MacOSX
> If `emacsclient` is not working correctly, check to see which binary it is trying to call.  Some MacOSX versions shipped with a very old version of Emacs (version 22).
