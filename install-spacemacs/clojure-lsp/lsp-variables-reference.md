## LSP layer variables reference

Practicalli recommends the following minimal configuration for LSP and Clojure

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



All the possible variables that can be set on the lsp layer (that have been found so far)

```elisp
     (lsp :variables
          ;; Commented variables are default values in the lsp layer configuration

          ;; Formatting and indentation
          lsp-enable-on-type-formatting nil
          ;; Set to nil to use CIDER features instead of LSP UI
          lsp-enable-indentation nil
          ;; lsp-enable-completion-at-point nil

          ;; Buffer visual elements
          ;; shows directory path at top of buffer
          ;; lsp-headerline-breadcrumb-enable nil

          ;; symbol highlighting - `lsp-toggle-symbol-highlight` toggles highlighting
          ;; change made to doom-gruvbox-light theme for subtle highlighting
          lsp-enable-symbol-highlighting t

          ;; Show lint errors in the mode-bar (tested on doom-modeline)
          ;; remove local clj-kondo binary from path  used by emacs or otherwise remove clj-kondo as clojure layer lint tool
          ;; flycheck-clj-kondo shows all the projects open with issues.  Without that enabled in the clojure layer, only
          ;; lint issues from the current project are shown.  It could be because I had both lsp and clojure layer clj-kondo
          lsp-modeline--enable-diagnostics t

          ;; popup documentation boxes
          ;; lsp-ui-doc-enable nil          ;; disable doc popups
          lsp-ui-doc-show-with-cursor nil
          ;; lsp-ui-doc-show-with-mouse t
          lsp-ui-doc-delay 2

          ;; show code actions and diagnostics text as right-hand side of buffer
          lsp-ui-sideline-enable nil
          ;; Is this just display or disabling the actions
          ;; lsp-modeline-code-actions-enable nil
          ;; lsp-ui-sideline-show-diagnostics nil
          ;; When non-nil, the symbol information overlay includes symbol name (redundant for c-modes).
          ;; lsp-ui-sideline-show-symbol	nil

          ;; show reference count for functions (assume their maybe other lenses in future)
          lsp-lens-enable t

          ;; Symbol highlighting
          ;; lsp-enable-symbol-highlighting nil
          ;; Do not highlight current symbol, only other matches ??  Avoids visual clashing with visual select
          lsp-symbol-highlighting-skip-current nil

          ;; add a delay to all lsp features, how much does this affect ?
          ;; lsp-idle-delay 2

                    ;; Efficient use of space in treemacs-lsp display
          treemacs-space-between-root-nodes nil
          ;;
          ;; lsp-file-watch-threshold 10000
          )
```


     ;; Clojure specific configuration in dotspacemacs/user-config
     ;; Default configuration of lsp
     ;; https://github.com/syl20bnr/spacemacs/tree/develop/layers/%2Btools/lsp
     ;; https://github.com/syl20bnr/spacemacs/blob/develop/layers/+tools/lsp/config.el

     ;; Pre-requisites
     ;; - all-the-icons for the breadcrumb on headerline

     ;; (defvar lsp-remap-xref-keybindings nil "When non-nil, xref keybindings remapped to lsp-ui-peek-find-*")
     ;; (defvar lsp-navigation 'both
     ;;   "If `simple' binds lightweight navigation functions under `SPC m g'.
     ;; If `peek' binds lsp-ui navigation functions under `SPC m g'.
     ;; If `both', binds lightweight navigation functions under `SPC m g' and lsp-ui functions under `SPC m G'")

     ;; ;; These are config variables exposed by the lsp-ui package
     ;; ;; They all have toggles bound under 't' in spacemacs/lsp-define-keys-for-mode
     ;; (defvar lsp-ui-doc-enable t "Enable/disable lsp-ui-doc overlay")
     ;; (defvar lsp-ui-doc-include-signature nil "When non-nil, type signature included in the lsp-ui-doc overlay")
     ;; (defvar lsp-ui-sideline-enable t "Enable/disable lsp-ui-sideline overlay")
     ;; (defvar lsp-ui-sideline-show-symbol nil "When non-nil, sideline includes symbol info (largely redundant for c modes)")  ; don't show symbol on the right of info
     ;; (defvar lsp-ui-sideline-ignore-duplicate t "Ignore duplicates")


     ;; Key bindings over-ridden by lsp include
     ;; spacemacs/toggle-evil-safe-lisp-structural-editing
     ;; cider-doc (replaced with describe thing at point) - doesnt show src, but jump to definition works



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
