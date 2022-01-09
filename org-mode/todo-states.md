# Org-mode TODO states
Show progress by adding TODO states to the headings of an .org document.  The default states are `TODO` `DOING` and `DONE`.  States can be added to any org document by simply typing them, or using commands to cycle through the states.

`t` calls `org-todo` which cycles through all the TODO states for the current heading. If the current line is not a heading, the parent heading is updated.

`, L` or `S-🡆` (`org-shiftright`) move the current TODO state forward to the next. `, H` or `S-🡄` move to the previous TODO states.


## Custom TODO States
A custom set of states can be configured, although it seems useful to keep the defaults and simply add custom states.

[Practicalli/spacemacs.d](https://github.com/practicalli/spacemacs.d) includes a simple kanban style of states.  The `|` character denotes closed TODO states.

In `dotspacemacs/user-config` in the `.spacemacs` file, define states and workflow for all `.org` files

```elisp
  (with-eval-after-load 'org
    (setq org-todo-keywords
         '((sequence "TODO" "DOING" "BLOCKED" "REVIEW" "|" "DONE" "ARCHIVED"))))
```
Use `with-eval-after-load` as a hook to call this setting when org-mode is first run by Spacemacs.


## Automatically log completion date-time
Commands can be triggered when entering a specific TODO state.

To add a `closed:` property with current date-time stamp when the status is `DONE`.  Changing the status will remove the closed property.

```elisp
  (with-eval-after-load 'org
    (setq org-log-done 'time))
```


## Custom colors (faces)
Using colors for the TODO states makes them easier to distinguish, especially in a long list of items.

`org-todo-keyword-faces` is a `defcustom` function for setting colors for the TODO state faces. Using the [X11 color names](https://en.wikipedia.org/wiki/Web_colors) gives colours that are easy to notice but are not to strong.

In `dotspacemacs/user-config` in the `.spacemacs` file, add following to configure custom colors
```elisp
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
