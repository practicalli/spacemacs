# Fullscreen at startup

You can configure Emacs to start in maximised mode (just like maximising an applications window) or in fullscreen mode for minimum distraction. 

Changed one of the following option in the `dotspacemacs/init` function of `~/.spacemacs`, the fullscreen option overrides the maximised option.

```lisp
dotspacemacs-fullscreen-at-startup t

dotspacemacs-maximized-at-startup t
```

> To find these lines quickly, use `SPC /` to search (or the Emacs command `C-s`)

Here are the relevant default settings 

```elisp
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t
```
> The character `t` for true is used as the non-nil value when these are either a true or false configuration option, with false value represented as `nil`.

> If a name is used for a value it should be preceded with a single quote character
