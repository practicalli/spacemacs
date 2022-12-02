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

Setting a different colour for each TODO state makes it easier to see the status at a glance. Using the [X11 color names](https://en.wikipedia.org/wiki/Web_colors) gives colours that are easy to notice but are not to strong.

Add the following code to the `dotspacemacs\user-config` section of the `.spacemacs` file:

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

>####HINT::Use simpler names or colour codes
> If the above codes do not work for you, try simpler colour names such as `green`, `blue`, `yellow`.  Alternatively, use the specific colour codes, such as `#242424`.

## Automatically log completion date-time

When a heading status enters `DONE`, add a `closed:` property with current date-time stamp

```elisp
  (with-eval-after-load 'org
    (setq org-log-done 'time))
```
