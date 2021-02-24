# Configure LSP and Cider
Practicalli recommends starting with a minimal LSP configuration to avoid duplication of features that are already present in Cider.  LSP features can then be enabled when you find them valuable.

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


## Disable cljfmt
cljfmt is the formatting tool for Clojure lsp. The rules for cljfmt feel a little restrictive, so I recommend disabling them all.

Edit (or create) the `~/.lsp/config.edn` file and add the following top-level key-value pairs

```
{
:cljfmt {:indentation?                        false
         :remove-trailing-whitespace?           false
         :remove-surrounding-whitespace?        false
         :remove-consecutive-blank-lines?       false
         :remove-multiple-non-indenting-spaces? false
         :split-keypairs-over-multiple-lines?   false}
}
```


## Clojure-mode for indenting
[practicalli/spacemacs.d configuration](https://github.com/practicalli/spacemacs.d/) uses clojure-mode features for indenting and aligning forms as you type.

In .spacemacs, the clojure layer variables allow for evaluating top-level forms from within a rich comment block.  The size limit helps avoid slow-down of Emacs from too much output in the REPL buffer.

```elisp
  (clojure :variables
           clojure-toplevel-inside-comment-form t
           cider-repl-buffer-size-limit 1000)
```

Cider configuration in dotspacemacs/user-config section of .spacemacs configures the automatic alignment and indenting of Clojure code, following the Clojure style guide.

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


## LSP layer variables
Add the `lsp` layer to `.spacemacs` and include the following variables for an uncluttered LSP UI.

The [lsp variables reference](lsp-variables-reference.md) covers more options available.

```elisp
     (lsp :variables
          ;; Formatting and indentation
          lsp-enable-on-type-formatting nil
          ;; Set to nil to use CIDER features instead of LSP UI
          lsp-enable-indentation nil
          ;; docstring popup - delay in seconds for mouse and cursor
          lsp-ui-doc-delay 2
          ;; show code actions and diagnostics text as right-hand side of buffer
          lsp-ui-sideline-enable nil
          ;; show reference count for functions (assume more lenses added in future)
          lsp-lens-enable t)
```

## Key bindings over-ridden by lsp include
`, h h` calls `cider-doc` without LSP enabled.  With LSP enabled then `describe-thing-at-point` command is called instead.  This is similar to `cider-doc`, however, it does not allow the navigation to the source code definition of the function.
