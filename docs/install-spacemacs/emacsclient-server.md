# emacsclient and persistent server

`emacsclient` will instantly open files in Emacs once an Emacs server process is running.

Emacs persistent server will run in the background, even when Emacs is not running, listening for requests to open files.

!!! HINT "Run Spacemacs once per OS login"
    Emacs is typically run once and kept open, as its feature rich enough to do all your tasks from Emacs.  Therefore the few seconds startup time is not seen as an issue.  If you stop and start Emacs constantly, as you may do with Vim, then you will of course notice this short delay.


## Configure Emacs persistent server

++spc++ ++"f"++ ++"e"++ ++"d"++ to edit your `.spacemacs` configuration

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


!!! WARNING "Old Emacs installs shipped with MacOSX"
    If `emacsclient` is not working correctly, check to see which Emacs version it run, `SPC SPC emacs-version`.  Some MacOSX versions shipped with a very old version of Emacs (version 22).
