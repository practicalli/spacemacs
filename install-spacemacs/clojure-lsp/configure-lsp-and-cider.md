# Configure LSP and Cider
Start with a minimal configuration for emacs-lsp and the user interface elements of emacs-lsp-ui

The [Spacemacs lsp layer](https://github.com/syl20bnr/spacemacs/tree/develop/layers/%2Btools/lsp) has a [default configuration](https://github.com/syl20bnr/spacemacs/blob/develop/layers/+tools/lsp/config.el) for all languages

The [LSP Mode website provides examples of LSP features](https://emacs-lsp.github.io/lsp-mode/)

> #### Hint::Choose your own preferences
> This configuration uses predominatly CIDER features as its a more established tool for Clojure development.
>
> LSP UI elements and features are added to complement but not over-ride features in CIDER.


## Pre-requisites
`SPC SPC allt-the-icons-instal-fonts` command will install icons that support the breadcrumb on headerline feature of LSP UI.  This provides the director path, filen name and symbol as a breadcrumb trail at the top of each buffer.

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



## Clojure for indenting
This is the current configuration used for the [practicalli/spacemacs.d configuration](https://github.com/practicalli/spacemacs.d/).  It uses Cider to automatically indent and align forms when typing.

Cider layer configuration
```elisp
  (clojure :variables
           ;; clojure-backend 'cider
           clojure-enable-linters 'clj-kondo
           clojure-toplevel-inside-comment-form t
           ;; cider-overlays-use-font-lock t
           cider-repl-buffer-size-limit 100)
```

Cider configuration in dotspacemacs/user-config section
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
Add the lsp layer to .spacemacs and include the following variables for an uncluttered LSP UI.

> #### TODO::work in progress, sorry

```elisp
  (lsp :variables
    ;; Commended variables are default values in the lsp layer configuration

    ;; Formatting and indentation
    lsp-enable-on-type-formatting nil
    lsp-enable-indentation nil

    ;; Buffer visual elements
    ;; shows directory path at top of buffer
    ;; lsp-headerline-breadcrumb-enable nil

    ;; popup documentation boxes
    ;; lsp-ui-doc-enable nil          ;; disable doc popups
    lsp-ui-doc-show-with-cursor nil
    lsp-ui-doc-show-with-mouse t
    ;; lsp-ui-doc-delay 5


    ;; show code actions and diagnostics text as right-hand side of buffer
    lsp-ui-sideline-enable nil
    ;; Is this just display or disabling the actions
    ;; lsp-modeline-code-actions-enable nil
    ;; lsp-ui-sideline-show-diagnostics nil
    ;; When non-nil, the symbol information overlay includes symbol name (redundant for c-modes).
    ;; lsp-ui-sideline-show-symbol	nil

    ;; show reference count for functions (assume their maybe other lenses in future)
    lsp-lens-enable t

    ;; Set to nil to use CIDER features instead of LSP UI
    lsp-enable-indentation nil
    ;; lsp-enable-completion-at-point nil

    ;; Modeline visualisation elements
    ;; When non-nil, shows error diagnostics in modeline.
    ;; lsp-modeline-diagnostics-enable	t
    ;; Displays all error statistcs per projects. See details below.
    ;; lsp-modeline-diagnostics-scope	`:project’
    ;; When non-nil, shows available code actions in modeline.
    ;; lsp-modeline-code-actions-enable	t
    ;; Display the number of available code actions and an icon. See details below.
    ;; lsp-modeline-code-actions-segments	`’(count icon)’


    ;; Misc
    ;; `simple’ or `peek’ to bind only xref OR lsp-ui-peek navigation functions.
    lsp-navigation	`both’
    ;; When non-nil, install lsp-ui package
    ;; lsp-use-lsp-ui	nil
    ;; When non-nil, xref key bindings remapped to lsp-ui-peek-find-{definition,references}.
    lsp-ui-remap-xref-keybindings	nil
    ;; When non-nil, the documentation overlay is displayed.
    lsp-ui-doc-enable	t
    ;; When nil, signature omitted from lsp-ui-doc overlay (this is usually redundant).
    ;; lsp-ui-doc-include-signature	nil
    ;; Efficient use of space in treemacs-lsp display
    treemacs-space-between-root-nodes nil
    ;;
    lsp-file-watch-threshold 10000
    )


```



     <!-- ;; (defvar lsp-remap-xref-keybindings nil "When non-nil, xref keybindings remapped to lsp-ui-peek-find-*") -->
     <!-- ;; (defvar lsp-navigation 'both -->
     <!-- ;;   "If `simple' binds lightweight navigation functions under `SPC m g'. -->
     <!-- ;; If `peek' binds lsp-ui navigation functions under `SPC m g'. -->
     <!-- ;; If `both', binds lightweight navigation functions under `SPC m g' and lsp-ui functions under `SPC m G'") -->

     <!-- ;; ;; These are config variables exposed by the lsp-ui package -->
     <!-- ;; ;; They all have toggles bound under 't' in spacemacs/lsp-define-keys-for-mode -->
     <!-- ;; (defvar lsp-ui-doc-enable t "Enable/disable lsp-ui-doc overlay") -->
     <!-- ;; (defvar lsp-ui-doc-include-signature nil "When non-nil, type signature included in the lsp-ui-doc overlay") -->
     <!-- ;; (defvar lsp-ui-sideline-enable t "Enable/disable lsp-ui-sideline overlay") -->
     <!-- ;; (defvar lsp-ui-sideline-show-symbol nil "When non-nil, sideline includes symbol info (largely redundant for c modes)")  ; don't show symbol on the right of info -->
     <!-- ;; (defvar lsp-ui-sideline-ignore-duplicate t "Ignore duplicates") -->



## Key bindings over-ridden by lsp include
`, h h` calls `cider-doc` without LSP enabled.  With LSP enabled then `describe-thing-at-point` command is called instead.  This is similar to `cider-doc`, however, it does not allow the navigation to the source code definition of the function.
