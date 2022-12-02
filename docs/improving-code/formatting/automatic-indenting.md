# Automatic indenting

`aggressive-indent-mode` will automatically adjust indentation as you type.

Edit `.spacemacs` and add this line one of these settings into the `dotspacemacs/user-config` section

For Clojure / ClojureScript language, add

```elisp
(add-hook 'clojure-mode-hook #'aggressive-indent-mode)
```

## Aggressive Indentation

> #### DANGER::LSP clashes with aggressive indent
> Avoid running LSP format as type and aggressive indent as they will interact with each others changes and cause very strange side effects

Set aggressive indentation for all languages using the following code instead

```elisp
(global-aggressive-indent-mode 1)
```

![Spacemacs CIDER - aggressive indent](https://raw.githubusercontent.com/Malabarba/aggressive-indent-mode/master/lisp-example.gif)

[Auto-indent code automatically](https://emacsredux.com/blog/2016/02/07/auto-indent-your-code-with-aggressive-indent-mode/)
