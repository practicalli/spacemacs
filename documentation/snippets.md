# Snippets

Snippets are shortcuts that expand to common code structures.  For example if you want to define a function, you can simply type `defn` and expand it to the full defn code structure 

```clojure
(defn 
  ""
  []
  )
```

The snippet positions the cursor so you can type the name of the function.  Pressing tab moves the cursor to the doc string, parameters and code body so you can add those parts too.

## Snippets available

You can 

* `def`
* `defn`

shortcut key 

`M-/`

# Adding snippets to auto-complete menu 

Snippets can be configured to appear in the auto-complete menu, so when you are typing you will see any matching snippet names.  For example, if you type `defn` then in the menu you will see the snippet as a `defn -> defn` menu item.  Selecting that menu item expands the snippet.

Edit your `~/.spacemacs` configuration file and locate the `dotspacemacs/layers > dotspacemacs-configuration-layers` variable.  Add the variable `auto-completion-enable-snippets-in-popup t` to the auto-completion layer.

For example:

```elisp
(defun dotspacemacs/layers ()
  (
  ;;; some code ommitted here...
  dotspacemacs-configuration-layers
   '(
    (auto-completion :variables
                     auto-completion-enable-help-tooltip t
                     auto-completion-enable-snippets-in-popup t)
```
