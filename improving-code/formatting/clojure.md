# Formatting Clojure code

[The Clojure Style Guide](https://guide.clojure.style/) is a very complete guide to the best practices in writing Clojure code, ensuring it is as easy as possible to read and maintain by Clojure developers.

Spacemacs Clojure layer will carry out basic formatting as you type using .

* `RET` the cursor correctly indents on new lines.
* `TAB` key will left align the current line of code or selected region.


## Recommended Formatting configuration

These are the recommended settings to add to the `dotspacemacs/user-config` section of `.spacemacs`

```elisp
(add-hook 'clojure-mode-hook #'aggressive-indent-mode)
(setq clojure-indent-style 'align-arguments)
(setq clojure-align-forms-automatically t)
```

Read the rest of this section for a deeper explanation of the above configuration.

Alternatively, jump to the section on [Linting](/improving-code/linting/)
