# Clojure LSP Snippets

++tab++ on the name of the snippet to expand. ++tab++ to jump to additional tab stops.

Clojure LSP snippets appear in the completion popup, in the same way as Clojure functions and other symbols.

![Spacemacs LSP snippets - deps snippets in completion menu](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/screenshots/spacemcs-snippets-completion-menu-deps-snippets.png)

[Clojure LSP snippets](https://clojure-lsp.io/features/#snippets){target=_blank} are editor agnostic, usable in any editor that supports [clojure-lsp](https://clojure-lsp.io/), making them more useful that editor specific snippets.

Clojure LSP snippets are defined using the EDN syntax and supports tab stops, placeholders with default values and can pull in a following form (`$current-form`).

[Built-in snippets](https://clojure-lsp.io/features/#snippets){target=_blank} are defined in the [`clojure-lsp.feature.completion-snippet` namespace](https://github.com/clojure-lsp/clojure-lsp/blob/master/lib/src/clojure_lsp/feature/completion_snippet.clj){target=_blank}.

[practicalli/clojure-lsp-config snippets](https://github.com/practicalli/clojure-lsp-config#custom-snippets){target=_blank .md-button}


## Checking available snippets

`lsp-clojure-server-info` function prints the Clojure LSP configuration to the message buffer,

The `:additional-snippets` top level key contains the user configuration.

```clojure title="clojure-lsp/config.edn"
:additional-snippets
[{:name "def-docstring",
  :detail "def with docstring",
  :snippet "(def \"$1\" $0)"}
 {:name "deftest",
  :detail "deftest clojure.test",
  :snippet
  "(deftest ${1:name}-test\n (testing \"${2:Context of the test assertions}\"\n (is (= ${3:assertion-values}))$4))\n $0"}]
```

`:project-settings` contain snippets defined in the project `.lsp/config.edn` file

```clojure
:project-settings
{:additional-snippets
 [{:name "def-docstring",
   :detail "def with docstring",
   :snippet "(def \"$1\" $0)"}]}
```
