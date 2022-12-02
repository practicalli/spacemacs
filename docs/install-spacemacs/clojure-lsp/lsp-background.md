# LSP and Clojure-LSP project background


## What is the Language Server Protocol?

Adding features like auto complete, go to definition, or documentation on hover for a programming language takes significant effort. Traditionally this work had to be repeated for each development tool, as each tool provides different APIs for implementing the same feature.

A Language Server is meant to provide the language-specific smarts and communicate with development tools over a protocol that enables inter-process communication.

The idea behind the Language Server Protocol (LSP) is to standardize the protocol for how such servers and development tools communicate. This way, a single Language Server can be re-used in multiple development tools, which in turn can support multiple languages with minimal effort.

LSP is a win for both language providers and tooling vendors!

The Language Server Protocol (LSP) defines the protocol used between an editor or IDE and a language server that provides language features like auto complete, go to definition, find all references etc. The goal of the Language Server Index Format (LSIF, pronounced like "else if") is to support rich code navigation in development tools or a Web UI without needing a local copy of the source code.

LSP was originally developed by Microsoft for Visual Studio Code, Language Server Protocol is now and open standard.


## Clojure LSP

The [clojure-lsp project](https://clojure-lsp.github.io/clojure-lsp/) provides the only implementation of a language server for Clojure.  It provides a relatively small native binary file (GraalVM native compilation of Clojure).

The language server provides these features for any editor that connects via the language server protocol.

* Auto-complete
* Navigation (jump to definitions)
* Show references (where functions are called from, call hierarchy)
* Code actions (extracting function / let, etc.)
* Refactor code (renaming, etc.)
* Surfacing Errors as they occur
* Automatic namespace management
* Code lens
* Semantic tokens (syntax highlighting)

The project is under active development and many people from the community are actively engaging with this project.

> #### Hint::Spacemacs and CIDER
> Many features available in LSP are already available via Emacs packages and Cider in some form, especially if you are familiar with tools such as iedit, narrowing and helm-ag.
>
> LSP uses static analysis of Clojure code to drive its features, so lsp can make some features simpler to use or provide greater accuracy of scope.
>
> Finding a balance between CIDER and Clojure-lsp requires some understanding of which features from each best supports your workflow.


### References

* [Configure Emacs as a Clojure IDE guide](https://emacs-lsp.github.io/lsp-mode/tutorials/clojure-guide/)
* [A guide on disabling/enabling lsp-mode features](https://emacs-lsp.github.io/lsp-mode/tutorials/how-to-turn-off/)
* [Emacs LSP UI website](https://emacs-lsp.github.io/lsp-ui/) and [emacs-lsp/lsp-ui repository](https://github.com/emacs-lsp/lsp-ui)


## Other Clojure tooling support

Spacemacs and Doom Emacs support LSP via the lsp and lsp-ui packages.

VS Code and Calva support LSP and Calva is making heavy use of clojure-lsp and clj-kondo to reduce the amount of tooling development required to support a fully featured Clojure development environment.

Neovim 5 onwards includes an LSP client and therefore supports LSP and Clojure directly. For earlier versions of Neovim, consider packages such as [Command of Completion also support LSP servers](https://github.com/neoclide/coc.nvim/wiki/Language-servers#supported-features)
