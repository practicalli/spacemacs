# Maximised or Fullscreen at startup

You can configure Emacs to start in maximised mode (just like maximising an applications window) or in fullscreen mode for minimum distraction.

Change one of the following option in the `dotspacemacs/init` function of `~/.spacemacs`. The fullscreen option overrides the maximised option.

```lisp
dotspacemacs-fullscreen-at-startup t

dotspacemacs-maximized-at-startup t
```

> To find these lines quickly, use `SPC s s to search and start typing the name of the option.  `C-j` to move down the matches, `C-k` to move up. `RET` to jump to the current line.

Practicalli uses the following settings for these options:

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


> ####Hint::Option values
> For all options, `t`  represents true, `nil` represents false.
>
> Where a name is used for a value it should be preceded with a single quote character, eg, `'all`
