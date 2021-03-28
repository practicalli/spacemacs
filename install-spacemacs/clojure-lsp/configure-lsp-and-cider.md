# Configure LSP and Cider
Practicalli recommends starting with [a minimal LSP configuration](https://github.com/practicalli/spacemacs.d/) to avoid duplication of features that are already present in Cider.  LSP features can then be enabled when you find them valuable.

[practicalli/spacemacs.d](https://github.com/practicalli/spacemacs.d/) configuration for Spacemacs included a minimal configuration for Cider and Clojure-lsp.

The [Spacemacs lsp layer](https://github.com/syl20bnr/spacemacs/tree/develop/layers/%2Btools/lsp) has a [default configuration](https://github.com/syl20bnr/spacemacs/blob/develop/layers/+tools/lsp/config.el) for all languages

The [LSP Mode website provides examples of LSP features](https://emacs-lsp.github.io/lsp-mode/)

Add `clojure-backend 'cider` as a clojure layer variable in `.spacemacs` to run Cider without any LSP features.


> #### Hint::Choose your own preferences
> This configuration uses predominately CIDER features as its a more established tool for Clojure development.
>
> LSP UI elements and features are added to complement but not over-ride features in CIDER.  See the [LSP variables reference](lsp-variables-reference.md) for other features that can be enabled.


## Pre-requisites
`SPC SPC allt-the-icons-install-fonts` command will install icons that support the breadcrumb on headerline feature of LSP UI.  This provides the director path, file name and symbol as a breadcrumb trail at the top of each buffer.

If this feature of LSP is not used, then the fonts do not need to be installed.


## Optional - clj-kondo
The clojure-lsp project includes the latest clj-kondo binary, so any external install of the clj-kondo binary is optional.

Remove the flycheck-clj-kondo configuration, `clojure-enable-linters 'clj-kondo`, from the Spacemacs Clojure layer to avoid duplication of results, if a separate clj-kondo binary is on the execution path.


## Spacemacs Clojure layer configuration
[practicalli/spacemacs.d configuration](https://github.com/practicalli/spacemacs.d/) uses clojure-mode features for indenting and aligning forms as you type.

In .spacemacs, the clojure layer variables allow for evaluating top-level forms from within a rich comment block.  The size limit helps avoid slow-down of Emacs from too much output in the REPL buffer.

```elisp
     (clojure :variables
     ;; clojure-backend 'cider               ;; use cider and disable lsp
     ;; clojure-enable-linters 'clj-kondo    ;; clj-kondo included in lsp
     cider-repl-display-help-banner nil      ;; disable help banner
     cider-pprint-fn 'fipp                   ;; fast pretty printing
     clojure-indent-style 'align-arguments
     clojure-align-forms-automatically t
     clojure-toplevel-inside-comment-form t  ;; evaluate expressions in comment as top level
     cider-result-overlay-position 'at-point ;; results shown right after expression
     cider-overlays-use-font-lock t
     cider-repl-buffer-size-limit 100        ;; limit lines shown in REPL buffer
     )
```


## Spacemacs Clojure automatic indentation
Cider configuration in `dotspacemacs/user-config` section of `.spacemacs` configures the automatic alignment and indenting of Clojure code, following the Clojure style guide.

```elisp
  ;; Indentation of function forms
  ;; https://github.com/clojure-emacs/clojure-mode#indentation-of-function-forms
  (setq clojure-indent-style 'align-arguments)
  ;;
  ;; Vertically align s-expressions
  ;; https://github.com/clojure-emacs/clojure-mode#vertical-alignment
  (setq clojure-align-forms-automatically t)
  ;;
  ;; Auto-indent code automatically
  ;; https://emacsredux.com/blog/2016/02/07/auto-indent-your-code-with-aggressive-indent-mode/
  (add-hook 'clojure-mode-hook #'aggressive-indent-mode)
```

> #### Hint::Explore the LSP indentation
> LSP can also carry out indentation.  Remove the `aggressive-indent-mode` and the clojure-mode indentation and alignment to avoid clashes with the LSP formatting and indentation.


## LSP layer variables
Add the `lsp` layer to `.spacemacs` and include the following variables for an uncluttered LSP UI.

The [lsp variables reference](lsp-variables-reference.md) covers more options available.

```elisp
     (lsp :variables
          lsp-enable-on-type-formatting nil
          lsp-enable-indentation nil
          lsp-enable-symbol-highlighting t
          lsp-modeline--enable-diagnostics t
          lsp-ui-doc-show-with-cursor nil   ;; disable doc popup for cursor
          lsp-ui-doc-delay 2
          lsp-ui-sideline-enable nil
          lsp-lens-enable t
          treemacs-space-between-root-nodes nil
          lsp-file-watch-threshold 10000)
```


## Customising symbol highlighting
Symbol highlighting can be toggled using the command `lsp-toggle-symbol-highlighting` and the startup state can be set using the lsp layer configuration variable `lsp-enable-symbol-highlighting`

The face used for highlighting will vary by theme.  Use the Emacs `customize` command to configure the `lsp-syntax-highliging-read` face or add the `theming` layer to `.spacemacs` and add a custom face to `docspacemacs/user-init` section of `.spacemacs`

In this example, the default orange background color is removed and the font weigh set to bold.
```elisp
(setq-default
    theming-modifications
      '((doom-gruvbox-light
         (lsp-face-highlight-read :background nil :weight bold))))
```

![doom gruvbox light - bold highlight for lsp](/images/doom-gruvbox-light-bold.png)

## Key bindings over-ridden by lsp include
`, h h` calls `cider-doc` without LSP enabled.  With LSP enabled then `describe-thing-at-point` command is called instead.  This is similar to `cider-doc`, however, it does not allow the navigation to the source code definition of the function.

## Yas-snippets and LSP
LSP uses company-lsp mode and manages the auto-completion popup.  Yasnippets do not seem to work with company-lsp (although it should be possible in theory).

`SPC i s` will run `helm-yas` and provides a menu to select and insert snippets into the current buffer.  `M-/` will expand a matching snippet too (although it seems to take a few tries).
