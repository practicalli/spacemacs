# Language Sever Protocol (LSP)
The Language Server Protocol (LSP) is a specification for tooling developers, defining a protocol for editors to talk to a language server and provide static analysis features, such as refactoring, symbol navigation, code completion, syntax highlighting.

A standard protocol means an LSP server implementation can support a wide range of tools, reducing the work of editor maintainers and helping ensure common features are available across all editors. LSP does not provide any implementation, this is left to tooling and editor developers.

[practicalli/spacemacs.d]({{ book.P9ISpacemacsD}}) provides an LSP configuration with minimal UI elements and no conflicts with CIDER.

```elisp
     (lsp :variables
          lsp-ui-doc-enable nil       ;; disable all doc popups
          lsp-ui-sideline-enable nil  ;; disable sideline bar for less distraction
          treemacs-space-between-root-nodes nil) ;; no spacing in treemacs views
```

Adding the `lsp` layer to `.spacemacs` will automatically use LSP for Clojure formatting, autocompletion and syntax checking.

LSP will override some features provided by CIDER, so you may wish to [configure lsp and lsp UI](configure-lsp-and-cider.md).

![Clojure Language Server Protocol LSP](https://raw.githubusercontent.com/practicalli/graphic-design/live/clojure/clojure-language-server.png)

> #### Hint::LSP and the REPL
> The REPL does the most important and unique part of Clojure (lisp) development, providing immediate feedback on what code expressions do when they are evaluated.  REPL
>
> You may decide the REPL provides all the tools you need all by itself.  Or if you may decide that some or all of the LSP features are useful.


## References

* [Configure Emacs as a Clojure IDE guide](https://emacs-lsp.github.io/lsp-mode/tutorials/clojure-guide/)
* [A guide on disabling/enabling lsp-mode features](https://emacs-lsp.github.io/lsp-mode/tutorials/how-to-turn-off/)
* [Emacs LSP UI website](https://emacs-lsp.github.io/lsp-ui/) and [emacs-lsp/lsp-ui repository](https://github.com/emacs-lsp/lsp-ui)
