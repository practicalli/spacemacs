# Evil Safe Structural Editing

The Clojure layer also includes [evil-cleverparens](http://spacemacs.org/layers/+vim/evil-cleverparens/README.html) which ensures Clojure code structure is respected.

Safe structural editing in Evil normal state respects structural editing too, meaning the standard evil commands can be used for cutting and deleting text without breaking Clojure or Lisp code structures.

Safe structural editing is provided by the package [evil-cleverparens](https://github.com/luxbock/evil-cleverparens) which is included in the Clojure layer. By default this mode is not activated.

| Spacemacs   | Evil    | Description                                                |
|-------------|---------|------------------------------------------------------------|
| `SPC m T s` | `, T s` | Enable evil safe structural editing for the current buffer |

When enabled the symbol `🆂` is displayed in the mode-line.

![Spacemacs - Clojure - Safe Structural Editing mode enabled](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-clojure-safe-structural-editing-mode.png)

Enable for all Clojure buffers by adding the following function in `dotspacemacs/user-config`

```
(spacemacs/toggle-evil-safe-lisp-structural-editing-on-register-hook-clojure-mode)
```

Or to enable evil safe structural editing for all supported major modes, use this function instead:

```
(spacemacs/toggle-evil-safe-lisp-structural-editing-on-register-hooks)
```


## Manually managing structure

Although it is not structural editing, in Evil you can delete to a particular character. Clojure code inside of `()` can be deleted without deleting the closing `)`

1. Enter **normal** mode
2. Move to the starting point of the text you wish to delete
3. `d t )` - delete everything up to, but not including the closing parenthesis
