# Customise your own todo states

You can also define your own todo states and workflow to support the way you work.

> #### TODO::Check if there is a better approach
> You can define `todo` states per `.org` file (to investigate).

Define states and workflow for all `.org` files in the `.spacemacs` file, inside `dotspacemacs/user-config` as follows

```elisp
  (with-eval-after-load 'org
    (setq org-todo-keywords
         '((sequence "todo" "doing" "blocked" "review" "|" "done" "archived"))))
```

## Setting colours (faces) for todo states to give clearer view of work

```elisp
  (with-eval-after-load 'org
    (setq org-todo-keyword-faces
         '(("todo" . org-warning)
           ("doing" . "yellow")
           ("blocked" . "red")
           ("review" . "orange")
           ("done" . "green")
           ("archived" .  "blue"))))
```

## Automatically log completion date-time

When a heading status enters `DONE`, add a `closed:` property with current date-time stamp

```elisp
  (with-eval-after-load 'org
    (setq org-log-done 'time))
```
