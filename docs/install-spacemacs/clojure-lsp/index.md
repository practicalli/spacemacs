# Clojure LSP

![Clojure Language Server Protocol LSP](https://raw.githubusercontent.com/practicalli/graphic-design/live/clojure/clojure-language-server.png)

Clojure LSP provides a standard set of features for editing and manipulating source code, e.g. autocompletion, code navigation, refactor code, inline syntax errors and idiom warnings.

!!! INFO "LSP and the REPL"
    The REPL is used to design Clojure effectively by providing instant feedback on code expressions as they are written and evaluated.  A REPL based workflow supports the most effective approach to development of Clojure apps and services.
    Clojure LSP supports the editing activities to write Clojure code effectively, providing a static analysis of the code base that drives advance editing, navigation and refactor tasks.


## Install Clojure CLI

[Install Clojure CLI - Practicall Clojure](https://practical.li/clojure/clojure-cli/install/clojure-lsp.html){target=_blank .md-button}


## LSP layer configuration

Adding the `lsp` layer to `.spacemacs` will automatically use LSP for Clojure formatting, autocompletion and syntax checking.

LSP will override some features provided by CIDER, so you may wish to [configure lsp and lsp UI](configure-lsp-and-cider/).

[practicalli/spacemacs.d](https://github.com/practicalli/spacemacs.d){target=_blank} provides an LSP configuration with minimal UI elements and no conflicts with CIDER.

```elisp
     (lsp :variables
          lsp-ui-doc-enable nil       ;; disable all doc popups
          lsp-ui-sideline-enable nil  ;; disable sideline bar for less distraction
          treemacs-space-between-root-nodes nil) ;; no spacing in treemacs views
```


## Specification

The Language Server Protocol (LSP) is a specification for tooling developers, defining a protocol for editors to talk to a language server and provide static analysis features, such as refactoring, symbol navigation, code completion, syntax highlighting.

A standard protocol means an LSP server implementation can support a wide range of tools, reducing the work of editor maintainers and helping ensure common features are available across all editors. LSP does not provide any implementation, this is left to tooling and editor developers.


## References

* [Configure Emacs as a Clojure IDE guide](https://emacs-lsp.github.io/lsp-mode/tutorials/clojure-guide/)
* [A guide on disabling/enabling lsp-mode features](https://emacs-lsp.github.io/lsp-mode/tutorials/how-to-turn-off/)
* [Emacs LSP UI website](https://emacs-lsp.github.io/lsp-ui/) and [emacs-lsp/lsp-ui repository](https://github.com/emacs-lsp/lsp-ui)
