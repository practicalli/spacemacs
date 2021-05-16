# Language Sever Protocol (LSP)
The Language Server Protocol (LSP) is a specification for tooling developers, defining a protocol for editors to talk to a language server and provide static analysis features, such as refactoring, symbol navigation, code completion, syntax highlighting.

A standard protocol means an LSP server implementation can support a wide range of tools, reducing the work of editor maintainers and helping ensure common features are available across all editors. LSP does not provide any implementation, this is left to tooling and editor developers.

[practicalli/spacemacs.d]({{ book.P9ISpacemacsD}}) provides an LSP configuration with minimal UI elements and no conflicts with CIDER.

Adding the `lsp` layer to `.spacemacs` will automatically use LSP for Clojure.  By default LSP will override some features provided by CIDER, so you may wish to [configure lsp and lsp UI](configure-lsp-and-cider.md).

![Clojure Language Server Protocol LSP](https://raw.githubusercontent.com/practicalli/graphic-design/live/clojure/clojure-language-server.png)

> #### Hint::LSP and the REPL
> The REPL does the most important and unique part of Clojure (lisp) development, providing immediate feedback on what code expressions do when they are evaluated.  REPL
>
> You may decide the REPL provides all the tools you need all by itself.  Or if you may decide that some or all of the LSP features are useful.


## Clojure-lsp project
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


## What is the Language Server Protocol?

Adding features like auto complete, go to definition, or documentation on hover for a programming language takes significant effort. Traditionally this work had to be repeated for each development tool, as each tool provides different APIs for implementing the same feature.

A Language Server is meant to provide the language-specific smarts and communicate with development tools over a protocol that enables inter-process communication.

The idea behind the Language Server Protocol (LSP) is to standardize the protocol for how such servers and development tools communicate. This way, a single Language Server can be re-used in multiple development tools, which in turn can support multiple languages with minimal effort.

LSP is a win for both language providers and tooling vendors!

The Language Server Protocol (LSP) defines the protocol used between an editor or IDE and a language server that provides language features like auto complete, go to definition, find all references etc. The goal of the Language Server Index Format (LSIF, pronounced like "else if") is to support rich code navigation in development tools or a Web UI without needing a local copy of the source code.

LSP was originally developed by Microsoft for Visual Studio Code, Language Server Protocol is now and open standard.

## Other Clojure tooling support
Spacemacs and Doom Emacs support LSP via the lsp and lsp-ui packages.

VS Code and Calva support LSP and Calva is making heavy use of clojure-lsp and clj-kondo to reduce the amount of tooling development required to support a fully featured Clojure development environment.

Neovim support LSP and Clojure support is available via Conjure or vim-fireplace.  Packages such as [Command of Completion also support LSP servers](https://github.com/neoclide/coc.nvim/wiki/Language-servers#supported-features)
