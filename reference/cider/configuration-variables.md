# Cider configuration variables.
The following in not an authoritative list of configuration variables.  The list was created from the [clojure-emacs/cider](https://github.com/clojure-emacs/cider) project as of 21st June 2020, searching for `defcustom` and editing the results list with multiple cursors.

Variables are grouped by the files they are defined in throughout the [clojure-emacs/cider](https://github.com/clojure-emacs/cider) project.

## Completion

| Variables                               | Default value |
|-----------------------------------------|---------------|
| cider-completion-use-context            | t             |
| cider-annotate-completion-candidates    | t             |
| cider-annotate-completion-function      |               |
| cider-completion-annotations-alist      |               |
| cider-completion-annotations-include-ns | 'unqualified  |

## Client
| Variables                         | Default value |
|-----------------------------------|---------------|
| cider-eval-spinner-type           | 'progress-bar |
| cider-show-eval-spinner           | t             |
| cider-eval-spinner-delay          | 1             |
| cider-enhanced-cljs-completion-p  | t             |
| cider-print-fn                    | 'pprint       |
| cider-print-options               | nil           |
| cider-print-quota                 | (* 1024 1024) |
| cider-print-buffer-size           | (* 4 1024)    |
| cider-filtered-namespaces-regexps |               |

## eldoc
| Variables                                  | Default value |
|--------------------------------------------|---------------|
| cider-eldoc-max-num-sexps-to-skip          | 30            |
| cider-eldoc-ns-function                    | #'identity    |
| cider-eldoc-max-class-names-to-display     | 3             |
| cider-eldoc-display-for-symbol-at-point    | t             |
| cider-eldoc-display-context-dependent-info | nil           |

## debug
| Variables                   | Default value |
|-----------------------------|---------------|
| cider-debug-prompt          | 'overlay      |
| cider-debug-use-overlays    | t             |
| cider-debug-display-locals  | nil           |
| cider-debug-prompt-commands |               |

## Overlays
| Variables                          | Default value |
|------------------------------------|---------------|
| cider-result-use-clojure-font-lock | t             |
| cider-overlays-use-font-lock       | t             |
| cider-use-overlays                 | 'both         |
| cider-result-overlay-position      | 'at-eol       |
| cider-eval-result-prefix           | "=>"          |
| cider-eval-result-duration         | 'command      |
| cider-use-fringe-indicators        | t             |

## Inspector
| Variables                          | Default value |
|------------------------------------|---------------|
| cider-inspector-page-size          | 32            |
| cider-inspector-fill-frame         | nil           |
| cider-inspector-skip-uninteresting | t             |

## REPL history
| Variables                                    | Default value |
|----------------------------------------------|---------------|
| cider-repl-history-display-style             | 'separated    |
| cider-repl-history-quit-action               | 'quit-window  |
| cider-repl-history-resize-window             | nil           |
| cider-repl-history-separator                 | ";;;;;;;;;;"  |
| cider-repl-history-recenter                  | nil           |
| cider-repl-history-highlight-current-entry   | nil           |
| cider-repl-history-highlight-inserted-item   | nil           |
| cider-repl-history-separator-face            | 'bold         |
| cider-repl-history-current-entry-face        | 'highlight    |
| cider-repl-history-inserted-item-face        | 'highlight    |
| cider-repl-history-maximum-display-length    | nil           |
| cider-repl-history-display-duplicates        | t             |
| cider-repl-history-display-duplicate-highest | t             |
| cider-repl-history-text-properties           | nil           |
| cider-repl-history-hook                      | nil           |
| cider-repl-history-show-preview              | nil           |

## xref
| Variables                                               | Default value |
|---------------------------------------------------------|---------------|
| cider-xref-actions '(("display-doc" . cider-doc-lookup) |               |

## util
| Variables                  | Default value                       |
|----------------------------|-------------------------------------|
| cider-font-lock-max-length | 10000                               |
| cider-doc-xref-regexp      |                                     |
| cider-jdk-src-paths        | '("/usr/lib/jvm/openjdk-8/src.zip") |

## repl
| Variables                            | Default value                                                |
|--------------------------------------|--------------------------------------------------------------|
| cider-repl-pop-to-buffer-on-connect  | t                                                            |
| cider-repl-display-in-current-window | nil                                                          |
| cider-repl-use-pretty-printing       | t                                                            |
| cider-repl-use-content-types         | nil                                                          |
| cider-repl-auto-detect-type          | t                                                            |
| cider-repl-use-clojure-font-lock     | t                                                            |
| cider-repl-require-ns-on-set         | nil                                                          |
| cider-repl-result-prefix             | ""                                                           |
| cider-repl-tab-command               | 'cider-repl-indent-and-complete-symbol                       |
| cider-repl-init-code                 | (list (cdr (assoc 'clj cider-repl-require-repl-utils-code))) |
| cider-repl-display-help-banner       | t                                                            |
| cider-repl-prompt-function           | #'cider-repl-prompt-default                                  |
| cider-repl-image-margin              | 10                                                           |
| cider-locref-regexp-alist            |                                                              |
| cider-repl-wrap-history              | nil                                                          |
| cider-repl-history-size              | 500                                                          |
| cider-repl-history-file              | nil                                                          |
| cider-repl-shortcut-dispatch-char    | ?\,                                                          |

## cider
| Variables                               | Default value                                       |
|-----------------------------------------|-----------------------------------------------------|
| cider-lein-command                      |                                                     |
| cider-lein-global-options               |                                                     |
| cider-lein-parameters                   |                                                     |
| cider-boot-command                      |                                                     |
| cider-boot-global-options               |                                                     |
| cider-boot-parameters                   |                                                     |
| cider-clojure-cli-command               |                                                     |
| cider-clojure-cli-global-options        |                                                     |
| cider-clojure-cli-parameters            |                                                     |
| cider-shadow-cljs-command               |                                                     |
| cider-shadow-cljs-global-options        |                                                     |
| cider-shadow-cljs-parameters            |                                                     |
| cider-gradle-command                    |                                                     |
| cider-gradle-global-options             |                                                     |
| cider-gradle-parameters                 |                                                     |
| cider-jack-in-default                   | (if (executable-find "clojure") 'clojure-cli 'lein) |
| cider-preferred-build-tool              |                                                     |
| cider-allow-jack-in-without-project     | 'warn                                               |
| cider-known-endpoints                   | nil                                                 |
| cider-connected-hook                    | nil                                                 |
| cider-disconnected-hook                 | nil                                                 |
| cider-inject-dependencies-at-jack-in    | t                                                   |
| cider-offer-to-open-cljs-app-in-browser | t                                                   |
| cider-jack-in-auto-inject-clojure       | nil                                                 |
| cider-check-cljs-repl-requirements      | t                                                   |
| cider-shadow-default-options            | nil                                                 |
| cider-figwheel-main-default-options     | nil                                                 |
| cider-custom-cljs-repl-init-form        | nil                                                 |
| cider-default-cljs-repl                 | nil                                                 |
| cider-edit-jack-in-command              | nil                                                 |
| cider-infer-remote-nrepl-ports          | nil                                                 |

## apropos
| Variables                                                  | Default value |
|------------------------------------------------------------|---------------|
| cider-apropos-actions '(("display-doc" . cider-doc-lookup) |               |

## scratch
| Variables                     | Default value |
|-------------------------------|---------------|
| cider-scratch-initial-message |               |

## ns
| Variables                            | Default value   |
|--------------------------------------|-----------------|
| cider-ns-save-files-on-refresh       | 'prompt         |
| cider-ns-save-files-on-refresh-modes | '(clojure-mode) |
| cider-ns-refresh-show-log-buffer     | nil             |
| cider-ns-refresh-before-fn           | nil             |
| cider-ns-refresh-after-fn            | nil             |

## macroexpansion
| Variables                               | Default value |
|-----------------------------------------|---------------|
| cider-macroexpansion-display-namespaces | 'tidy         |
| cider-macroexpansion-print-metadata     | nil           |

## test
| Variables                            | Default value                  |
|--------------------------------------|--------------------------------|
| cider-test-show-report-on-success    | nil                            |
| cider-auto-select-test-report-buffer | t                              |
| cider-test-defining-forms            | '("deftest" "defspec")         |
| cider-test-infer-test-ns             | 'cider-test-default-test-ns-fn |

## common
| Variables                           | Default value |
|-------------------------------------|---------------|
| cider-prompt-for-symbol             | t             |
| cider-special-mode-truncate-lines   | t             |
| cider-jump-to-pop-to-buffer-actions |               |
| cider-path-translations             | nil           |
| cider-prefer-local-resources        | nil           |

## doc
| Variables                    | Default value |
|------------------------------|---------------|
| cider-doc-auto-select-buffer | t             |
| cider-docview-fill-column    | fill-column   |

## client
| Variables                               | Default value |
|-----------------------------------------|---------------|
| ;; nrepl-buffer-name-separator          | " "           |
| ;; nrepl-buffer-name-show-port          | nil           |
| nrepl-connected-hook                    | nil           |
| nrepl-disconnected-hook                 | nil           |
| nrepl-force-ssh-for-remote-hosts        | nil           |
| nrepl-use-ssh-fallback-for-remote-hosts | nil           |
| nrepl-sync-request-timeout              | 10            |
| nrepl-hide-special-buffers              | nil           |
| nrepl-log-messages                      | nil           |
| nrepl-message-colors                    |               |

## stacktrace
| Variables                          | Default value  |
|------------------------------------|----------------|
| cider-stacktrace-fill-column       | t              |
| cider-stacktrace-default-filters   | '(tooling dup) |
| cider-stacktrace-suppressed-errors | '()            |

## eval
| Variables                                 | Default value                       |
|-------------------------------------------|-------------------------------------|
| cider-show-error-buffer                   | t                                   |
| cider-auto-jump-to-error                  | t                                   |
| cider-auto-select-error-buffer            | t                                   |
| cider-auto-track-ns-form-changes          | t                                   |
| cider-auto-inspect-after-eval             | t                                   |
| cider-save-file-on-load                   | 'prompt                             |
| cider-file-loaded-hook                    | nil                                 |
| cider-interactive-eval-output-destination | 'repl-buffer                        |
| cider-comment-prefix                      | ";;=>"                              |
| cider-comment-continued-prefix            | ";;"                                |
| cider-comment-postfix                     | ""                                  |
| cider-mode-line-show-connection           | t                                   |
| cider-mode-line                           |                                     |
| cider-switch-to-repl-after-insert-p       | t                                   |
| cider-switch-to-repl-on-insert            | t                                   |
| cider-invert-insert-eval-p                | nil                                 |
| cider-dynamic-indentation                 | t                                   |
| cider-font-lock-dynamically               | '(macro core deprecated)            |
| cider-font-lock-reader-conditionals       | t                                   |
| cider-use-tooltips                        | t                                   |
| cider-session-name-template               | "%J:%h:%p"                          |
| cider-connection-message-fn               | #'cider-random-words-of-inspiration |
| cider-redirect-server-output-to-repl      | t                                   |
| cider-auto-mode                           | t                                   |
