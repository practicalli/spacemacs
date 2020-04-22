# Org-mode TODO states
TODO's can be added to any org document by simply typing them, or using commands to cycle through the states.

`, L` or `S-🡆` (`org-shiftright`) will move the current item to the next state, which by default are  `TODO` `DOING` and `DONE`.  `, H` or `S-🡄` to cycle the states in reverse.


## Custom TODO States
A custom set of states can be configured, although it seems useful to keep the defaults and simply add custom states.

[Practicalli/spacemacs.d](https://github.com/practcialli/spacemacs.d) includes a simple [kanban](https://en.wikipedia.org/wiki/Kanban_(development)) style of states.  The `|` character

In `dotspacemacs/user-config` in the `.spacemacs` file, define states and workflow for all `.org` files

```elisp
  (with-eval-after-load 'org
    (setq org-todo-keywords
         '((sequence "TODO" "DOING" "BLOCKED" "REVIEW" "|" "DONE" "ARCHIVED"))))
```
Use `with-eval-after-load` as a hook to call this setting when org-mode is run


## Custom colors (faces)
Using colors for the TODO states makes them easier to distinguish, especially in a long list of items.

`org-todo-keyword-faces` is a `defcustom` function for setting colors for the TODO state faces. Using the [X11 color names](https://en.wikipedia.org/wiki/Web_colors) gives colours that are easy to notice but are not to strong.

In `dotspacemacs/user-config` in the `.spacemacs` file, add following to configure custom colors
```elsip
  (with-eval-after-load 'org
    (setq org-todo-keyword-faces
         '(("todo" . "SlateGray")
           ("doing" . "DarkOrchid")
           ("blocked" . "Firebrick")
           ("review" . "Teal")
           ("done" . "ForestGreen")
           ("archived" .  "SlateBlue"))))
```

> #### Hint::Theme faces may over-ride your custom color settings
> `SPC h d F` will list all the faces used with the current buffer. `RET` on a face name to find out where it is defined.
>
> Use the `SPC SPC customize` command to explore and change faces


## Automatically log completion date-time
Commands can be triggered when entering a specific TODO state.

To add a `closed:` property with current date-time stamp when the status is `DONE`.  Changing the status will remove the closed property.

```elisp
  (with-eval-after-load 'org
    (setq org-log-done 'time))
```
