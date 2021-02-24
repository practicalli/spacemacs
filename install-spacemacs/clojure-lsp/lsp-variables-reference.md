## LSP layer variables reference

All the possible variables that can be set on the lsp layer (that have been found so far)

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

    ;; show reference count for functions (assume more lenses added in future)
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
