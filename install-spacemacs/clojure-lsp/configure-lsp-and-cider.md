# Configure LSP and Cider
Practicalli recommends starting with [a minimal LSP configuration](https://github.com/practicalli/spacemacs.d/) to avoid conflict with features that are present in Cider.  LSP features can be enabled when you find them valuable.

[practicalli/spacemacs.d](https://github.com/practicalli/spacemacs.d/) configuration for Spacemacs included a minimal configuration for Cider and Clojure-lsp.

The [Spacemacs lsp layer](https://github.com/syl20bnr/spacemacs/tree/develop/layers/%2Btools/lsp) has a [default configuration](https://github.com/syl20bnr/spacemacs/blob/develop/layers/+tools/lsp/config.el) for all languages

The [LSP Mode website provides examples of LSP features](https://emacs-lsp.github.io/lsp-mode/) and there is a long [list of LSP settings](https://emacs-lsp.github.io/lsp-mode/page/settings/)

Add `clojure-backend 'cider` as a clojure layer variable to the `clojure` layer in the `.spacemacs` file to run Cider without LSP features.


> #### Hint::Choose your own preferences
> This configuration uses predominately CIDER features.  Minimal LSP UI elements and features are added without distracting from the minimal Spacemacs experience.


## Pre-requisites
`SPC SPC all-the-icons-install-fonts` command will install icons that support the [breadcrumbs on headerline feature](https://emacs-lsp.github.io/lsp-mode/page/main-features/#breadcrumb-on-headerline) of LSP UI.  This provides the director path, file name and symbol as a breadcrumb trail at the top of each buffer.

![Spacemacs LSP breadcrumbs](/images/spacemacs-lsp-breadcumbs.png)

## Optional - clj-kondo
clojure-lsp includes the latest clj-kondo binary if not found on the execution path. so any external install of the clj-kondo binary is optional.

Remove the flycheck-clj-kondo configuration, `clojure-enable-linters 'clj-kondo`, from the `clojure` layer in `.spacemacs` to avoid duplication of results.


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


## Aligning forms
`SPC m = l` will align arguments in the current line or selected region.  Automatic aligning of forms is not yet supported in LSP for Clojure.

> #### Hint::LSP aligning forms not fully supported
> [Support for associative syntax alignment](https://github.com/weavejester/cljfmt/issues/36) is an issue to add aligning forms to cljfmt, which is used by LSP for formatting.

Automatic aligning of forms works with `clojure-mode` by configuring `aggressive-indent-mode`, however, this seriously conflicts with LSP formatting creating an unworkable editing experience.

To auto-align arguments using clojure-mode, set `lsp-enable-on-type-formatting` to `nil` in the `lsp` layer configuration.  Then add the following configuration in `dotspacemacs/user-config` section of `.spacemacs`

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
  ;; WARNING - really conflicts with LSP formatting - set lsp-enable-on-type-formatting to nil in lsp layer
  ;; https://emacsredux.com/blog/2016/02/07/auto-indent-your-code-with-aggressive-indent-mode/
  (add-hook 'clojure-mode-hook #'aggressive-indent-mode)
```


## LSP layer variables
Add the `lsp` layer to `.spacemacs` and include the following variables for an uncluttered LSP UI.

```elisp
(lsp :variables
          ;; Formatting and indentation - use Cider instead
          lsp-enable-on-type-formatting t
          ;; Set to nil to use CIDER features instead of LSP UI
          lsp-enable-indentation t
          lsp-enable-snippet t  ;; to test again

          ;; symbol highlighting - `lsp-toggle-symbol-highlight` toggles highlighting
          ;; subtle highlighting for doom-gruvbox-light theme defined in dotspacemacs/user-config
          lsp-enable-symbol-highlighting t

          ;; Show lint error indicator in the mode line
          lsp-modeline-diagnostics-enable t
          ;; lsp-modeline-diagnostics-scope :workspace

          ;; popup documentation boxes
          ;; lsp-ui-doc-enable nil          ;; disable all doc popups
          lsp-ui-doc-show-with-cursor nil   ;; doc popup for cursor
          ;; lsp-ui-doc-show-with-mouse t   ;; doc popup for mouse
          ;; lsp-ui-doc-delay 2             ;; delay in seconds for popup to display
          lsp-ui-doc-include-signature t    ;; include function signature
          ;; lsp-ui-doc-position 'at-point  ;; positioning of doc popup: top bottom at-point
          lsp-ui-doc-alignment 'window      ;; relative location of doc popup: frame window

          ;; code actions and diagnostics text as right-hand side of buffer
          lsp-ui-sideline-enable nil
          lsp-ui-sideline-show-code-actions nil
          ;; lsp-ui-sideline-delay 500

          ;; lsp-ui-sideline-show-diagnostics nil

          ;; reference count for functions (assume their maybe other lenses in future)
          lsp-lens-enable t

          ;; Efficient use of space in treemacs-lsp display
          treemacs-space-between-root-nodes nil

          ;; Optimization for large files
          lsp-file-watch-threshold 10000
          lsp-log-io nil)
```

## dotspacemacs/user-config settings
Additional settings have been added to the `dotspacemacs/user-config` section of `.spacemacs` file as they were not working as layer variables.

```
(setq lsp-ui-sideline-enable nil)
(setq lsp-modeline-diagnostics-scope :workspace)
```


## Customising symbol highlighting
Symbol highlighting can be toggled using the command `lsp-toggle-symbol-highlighting` and the startup state can be set using the lsp layer configuration variable `lsp-enable-symbol-highlighting`

The face used for highlighting will vary by theme.  Use the Emacs `customize` command to configure the `lsp-syntax-highlight-read` face or add the `theming` layer to `.spacemacs` and add a custom face to `dotspacemacs/user-init` section of `.spacemacs`

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
