# Reference: Variables of the LSP layer

A quick reference of the main variables that can be set in the Spacemacs LSP layer configuration


## LSP-mode


| Variable                             | default    | description                                               |
|--------------------------------------|------------|-----------------------------------------------------------|
| lsp-enable-snippet                   | t          | Enable LSP server built-in snippets and custom snippets   |
| lsp-enable-folding                   | t          |                                                           |
| lsp-semantic-tokens-enable           | nil        |                                                           |
| lsp-enable-file-watchers             | t          |                                                           |
| lsp-enable-links                     | t          |                                                           |
| lsp-enable-imenu                     | t          |                                                           |
| lsp-enable-dap-auto-configure        | t          |                                                           |
| lsp-eldoc-enable-hover               | t          |                                                           |
| lsp-completion-enable                | t          | Autocompletion pop-up                                     |
| lsp-enable-symbol-highlighting       | t          | Highlight matching symbol names in current buffer         |
| lsp-enable-xref                      | t          |                                                           |
| lsp-enable-indentation               | t          | Disable to use Clojure-mode (CIDER) formatting            |
| lsp-enable-on-type-formatting        | t          | Disable to use Clojure-mode (CIDER) formatting            |
| lsp-enable-text-document-color       | t          |                                                           |
| lsp-modeline-code-actions-enable     | t          |                                                           |
| lsp-modeline-diagnostics-enable      | t          | Show LSP error/warning count in modeline                  |
| lsp-modeline-diagnostics-scope       | :workspace | Diagnostics relevant to the current project only          |
| lsp-modeline-workspace-status-enable | t          |                                                           |
| lsp-headerline-breadcrumb-enable     | t          |                                                           |
| lsp-lens-enable                      | t          |                                                           |
| lsp-enable-suggest-server-download   | t          |                                                           |
| lsp-file-watch-threshold             | 1000       | Maximum number of files to watch in a project             |
| lsp-log-io                           | nil        | log all messages from language server to *lsp-log* buffer |


### Related toggles

* `SPC SPC lsp-toggle-symbol-highlight` toggles highlighting


> #### Hint::Symbol Highlight face
> A more subtle highlighting for `doom-gruvbox-light` is theme defined in dotspacemacs/user-config of practicalli/spacemacs.d


## LSP UI

| varible                        | default   | description                                                     |
|--------------------------------|-----------|-----------------------------------------------------------------|
| lsp-ui-sideline-enable         | t         | Show sideline bar                                               |
| lsp-ui-doc-enable              | t         | disable all doc popups                                          |
| lsp-ui-doc-show-with-cursor    | nil       | doc popup for cursor                                            |
| lsp-ui-doc-show-with-mouse     | nil       | doc popup for mouse                                             |
| lsp-ui-doc-delay               | 2         | delay in seconds for popup to display                           |
| lsp-ui-doc-include-signature   | t         | include function signature                                      |
| lsp-ui-doc-position            | 'at-point | top bottom at-point                                             |
| lsp-ui-doc-alignment           | 'window   | Position of doc popup - `'frame` or `'window`                   |
| lsp-enable-text-document-color | t         | Font lock text in doc popup                                     |
| lsp-lens-enable                | t         | display function call and unit test count next to function name |

> #### Hint::Disable Sideline bar
> Practicalli recommends disabling the sideline bar to minimise distractions
> Add `lsp-ui-sideline-enable nil` to the lsp layer `:variables` in the Spacemacs configuration


## References

* [Configure Emacs as a Clojure IDE guide](https://emacs-lsp.github.io/lsp-mode/tutorials/clojure-guide/)
* [A guide on disabling/enabling lsp-mode features](https://emacs-lsp.github.io/lsp-mode/tutorials/how-to-turn-off/)
* [Emacs LSP UI website](https://emacs-lsp.github.io/lsp-ui/) and [emacs-lsp/lsp-ui repository](https://github.com/emacs-lsp/lsp-ui)
