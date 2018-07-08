# Evil Clojure Editing

Vim is a very powerful editor that allows you to manipulate text very easily.  To ensure all this power respects the structure of your Clojure code we use [smartparens](https://github.com/Fuco1/smartparens/wiki#getting-started) in strict mode.

The [evil-cleverparens](http://spacemacs.org/layers/+vim/evil-cleverparens/README.html) enhances [smartparens]() strict mode to ensure when you delete text with vim the struture and formatting of Clojure remains intact.


## Configure Smartparens

Smartparens is part of the standard distribution of Spacemacs, so no install is necessary.


From my own `.spacemacs` configuration:

```clojure
   ;; If non-nil `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode t

   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis t

   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
```

## Add Evil-cleverparens layer

Evil-cleverparens is added as a Spacemacs layer.  Edit the `.spacemacs` file and add `evil-cleverparens` as a layer.


```elisp
   dotspacemacs-configuration-layers
   '(
     evil-cleverparens
    )
```

Add `evil-cleverparens` to the Clojure mode using `add-hook` in the `dotspacemacs/user-config` section of the `.spacemacs` file.

```elisp
(defun dotspacemacs/user-config ()
  ;; Add evil-cleverparens to clojure-mode
  ;; (spacemacs/toggle-evil-cleverparens-on)
  (add-hook 'clojure-mode-hook #'evil-cleverparens-mode))
)
```
