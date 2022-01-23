# Clojure LSP Snippets

[Clojure LSP snippets](https://clojure-lsp.io/features/#snippets) are editor agnostic, usable in any editor that supports [clojure-lsp](https://clojure-lsp.io/), making them more useful that editor specific snippets.

Clojure LSP snippets are defined using the EDN syntax and supports tab stops, placeholders with default values and can pull in a following form (`$current-form`).

Snippets appear in the completion menu when typing.

<!-- TODO: add image of snippet menu -->

Alternatively, type the name of the snippet and press `C-SPC` to expand.

[Built-in snippets](https://clojure-lsp.io/features/#snippets)


## Checking available snippets

 `lsp-clojure-server-info` function prints the Clojure LSP configuration to the message buffer, including any :additional-snippets found in the project or user configuration.



<!-- more -->

## Clojure-lsp snippets

Clojure LSP includes snippets as part of the completion feature, so when typing the name of a snippet it will appear in a completion popup.  In the same way that happens for Clojure functions and other symbols.


Built-in clojure-lsp snippets https://clojure-lsp.io/features/#snippets

Clojure LSP snippets are [defined in `clojure-lsp.feature.completion-snippet` namespace](https://github.com/clojure-lsp/clojure-lsp/blob/master/src/clojure_lsp/feature/completion_snippet.clj).
