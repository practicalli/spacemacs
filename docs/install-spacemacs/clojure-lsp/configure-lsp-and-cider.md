# Configure LSP and Cider

[Lsp layer](https://github.com/syl20bnr/spacemacs/tree/develop/layers/%2Btools/lsp){target=_blank} defines a [common configuration](https://github.com/syl20bnr/spacemacs/blob/develop/layers/+tools/lsp/config.el){target=_blank} for all languages in Spacemacs.

The [LSP Mode website provides examples of LSP features](https://emacs-lsp.github.io/lsp-mode/){target=_blank} and there is a long [list of LSP settings](https://emacs-lsp.github.io/lsp-mode/page/settings/){target=_blank}


!!! INFO "Disable LSP for Clojure"
    Set the clojure layer variable `clojure-backend` to `cider` to disable LSP features and use CIDER for auto-completion and formatting of code.


??? HINT "Start with Minimal Features and add when useful"
    Practicalli recommends starting with [a minimal LSP configuration](https://github.com/practicalli/spacemacs.d/){target=_blank} to avoid conflict with features that are present in Cider.  LSP features can be enabled when you find them valuable.

    [practicalli/spacemacs.d](https://github.com/practicalli/spacemacs.d/){target=_blank} configuration for Spacemacs included a minimal configuration for Cider and Clojure-lsp.
    This configuration uses predominately CIDER features.  Minimal LSP UI elements and features are added without distracting from the minimal Spacemacs experience.


## Pre-requisites

LSP UI requires icons provides by the [all-the icons font](https://github.com/domtronn/all-the-icons.el) to support the [breadcrumbs on headerline feature](https://emacs-lsp.github.io/lsp-mode/page/main-features/#breadcrumb-on-headerline) and Treemacs visual elements.

`SPC SPC all-the-icons-install-fonts` command installs the required icons

![Spacemacs LSP breadcrumbs](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-lsp-breadcrumbs-light.png?raw=true#only-light)
![Spacemacs LSP breadcrumbs](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-lsp-breadcrumbs-dark.png?raw=true#only-dark)


### Disable Live Linting tools

clojure-lsp includes the latest clj-kondo binary which is used to generate the static analysis of the project code.

Remove `clojure-enable-linters 'clj-kondo` from the `clojure` layer variable in the Spacemacs configuration to avoid duplication of results.


## Spacemacs Clojure layer configuration

[practicalli/spacemacs.d configuration](https://github.com/practicalli/spacemacs.d/){target=_blank} uses clojure-mode features for indenting and aligning forms as you type.  Optomisations include using fipp to generate pretty print output and limiting the size of the repl buffer to keep Emacs responsive.

```emacs title="Spacemacs configuration - `dotspacemacs-configuration-layers`"
     (clojure :variables
     ;; clojure-backend 'cider               ;; use cider and disable lsp
     ;; clojure-enable-linters 'clj-kondo    ;; clj-kondo included in lsp
     cider-repl-display-help-banner nil      ;; disable help banner
     cider-pprint-fn 'fipp                   ;; fast pretty printing
     clojure-indent-style 'align-arguments   ;; vertically align forms
     clojure-align-forms-automatically t     ;; align form while typing
     clojure-toplevel-inside-comment-form t  ;; evaluate expressions in comment as top level
     cider-result-overlay-position 'at-point ;; results shown right after expression
     cider-overlays-use-font-lock t          ;; use font face everywhere
     cider-repl-buffer-size-limit 100        ;; limit lines shown in REPL buffer
     )
```


## Aligning forms

`SPC m = l` aligns arguments in the current line or selected region.  Automatic aligning of forms is not yet supported in LSP for Clojure.

!!! INFO "LSP aligning forms not fully supported"
    [Support for associative syntax alignment](https://github.com/weavejester/cljfmt/issues/36) is an issue to add aligning forms to cljfmt, which is used by LSP for formatting.

!!! WARNING "Aggressive Indent Mode conflicts with LSP"
    Adding aggressive-indent-mode as a hoot to clojure-mode when Clojure LSP is configured to format and align code will cause a serious conflict, with each tool trying to change the alignment of the other tool, leading to very unpredictable events.
    `(add-hook 'clojure-mode-hook #'aggressive-indent-mode)`


## LSP layer variables

Add the `lsp` layer to `.spacemacs` and include the following variables for an uncluttered LSP UI.

```emacs title="Spacemacs configuration - dotspacemacs/user-config"
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


## Customising symbol highlighting

Symbol highlighting can be toggled using the command `lsp-toggle-symbol-highlighting` and the startup state can be set using the lsp layer configuration variable `lsp-enable-symbol-highlighting`

The face used for highlighting will vary by theme.  Use the Emacs `customize` command to configure the `lsp-syntax-highlight-read` face or add the `theming` layer to `.spacemacs` and add a custom face to `dotspacemacs/user-init` section of `.spacemacs`

In this example, the default orange background color is removed and the font weigh set to bold.
```emacs title "Spacemacs configuration - dotspacemacs/user-init"
(setq-default
    theming-modifications
      '((doom-gruvbox-light
         (lsp-face-highlight-read :background nil :weight bold))))
```

![doom gruvbox light - bold highlight for lsp](/images/doom-gruvbox-light-bold.png)
