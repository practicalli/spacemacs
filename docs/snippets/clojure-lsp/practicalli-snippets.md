# Practicalli Snippets for Clojure LSP

[Custom snippets created by Practicalli](https://github.com/practicalli/clojure-lsp-config) and added via the `:additional-snippets` key in the Clojure LSP configuration (`.lsp/config.edn` or user level configuration).  Snippets are defined as a vector of hash-maps

```clojure
{:additional-snippets [{} {} {} ,,,]}
```

> #### Hint::Install Practicalli Custom Snippets
> [Install practicalli/clojure-lsp-snippets guide](https://practical.li/spacemacs/install-spacemacs/clojure-lsp/snippets.md)


## Documentation

A comment heading to describe the purpose and important information about the current namesapce.

```clojure
  {:name "comment-heading"
   :detail "Comment Header"
   :snippet
   ";; ---------------------------------------------------------
    ;; ${1:Heading summary title}
    ;;
    ;; ${2:Brief description}\n;; ---------------------------------------------------------\n\n$0"}
```

A comment separator for marking logical sections within a namespace, useful for navigating code and identifying opportunities to refactor a namespace into multiple namespaces.

```clojure
  {:name "comment-separator"
   :detail "Comment Separator"
   :snippet
   ";; ---------------------------------------------------------\n;; ${1:Section title}\n\n$0"}
```

A comment section with start and end titles for marking logical sections within a namespace, again for navigation and identifying opportunities to refactor a namespace.

```clojure
  {:name "comment-section"
   :detail "Comment Section"
   :snippet
   ";; ---------------------------------------------------------\n;; ${1:Section title}\n\n$0\n\n
    ;; End of $1\n;; ---------------------------------------------------------\n\n"}
```


## REPL Driven Development

A rich comment block typically used to hold function calls to show how to make use of the important aspects of the current namespace.  For example, calls to `start`, `restart`, `stop` functions in a namespace that defines the service life-cycle.

This provides a live executable guide to using the namespace, without being called if the whole namespace is evaluated.

A commented expression is placed before the closing paren to ensure that closing paren is not folded up into the previous line.  This makes it easier to add further code to the rich comment block.

```clojure
  {:name "rich-comment"
   :detail "Create rich comment"
   :snippet
   "(comment
      $0
  #_()) ;; End of rich comment"}
```

A modified rich comment block with clj-kondo configuration to suppress warnings for duplicate function definition names, supporting alternative function implementations as part of a REPL driven development workflow.

```clojure
  {:name "rich-comment-rdd"
   :detail "Create comment block"
   :snippet
   "#_{:clj-kondo/ignore [:redefined-var]}
   (comment
     $0
   #_()) ;; End of rich comment"}
```

Wrap an existing form in a rich comment

```clojure
  {:name "wrap-rich-comment"
   :detail "Wrap current expression with rich comment form"
   :snippet
   "(comment
      $current-form
      $0
   #_()) ;; End of rich comment"}
```

Comment an existing form with the Clojure Comment macro, `_#`

```clojure
  {:name "wrap-reader-comment"
   :detail "Wrap current expression with Comment Reader macro"
   :snippet "#_$current-form"}
```


## Hot loading library dependencies

Clojure CLI projects can [hotload library dependencies into a running Clojure REPL using the tools.deps library](https://practical.li/clojure/alternative-tools/clojure-cli/hotload-libraries.html).  This requires starting a REPL with the `clojure.tools.deps.alpha` library as a dependency which can be done by including the [`:lib/hotload` alias from practicalli/clojure-deps-edn](https://github.com/practicalli/clojure-deps-edn#hotload-libraries-into-a-running-repl).  Note this library is alpha and the API could change in future.

Create a rich comment block that requires the `clojure.tools.deps.alpha` namespace and an `add-libs` expression to hotload one or more libraries in a hash-map.  Tab stops with placeholders are included for adding the first library to hotload.

```clojure
  {:name "rich-comment-hotload"
   :detail "Rich comment library hotload"
   :snippet
   "#_{:clj-kondo/ignore [:redefined-var]}
    (comment
      ;; Add-lib library for hot-loading
      (require '[clojure.tools.deps.alpha.repl :refer [add-libs]])
      (add-libs '{${1:domain/library-name} {:mvn/version \"${2:1.0.0}\"}$3})
      $0
    #_()) ;; End of rich comment block"}
```


## Core functions

Create a public var using a `def` form with a doc-string, with placeholders for name and value.

```clojure
  {:name "def"
   :detail "def with docstring"
   :snippet "(def ${1:name}\n  \"${2:docstring}\"\n  $0)"}
```

Create a private var using a `def` form with `^:private` meta data and a doc-string, with placeholders for name and value.

```clojure
  {:name "def-"
   :detail "def private"
   :snippet "(def ^:private ${1:name}\n  \"${2:doc-string}\"\n $0)"}
```

A `defn` form with name, doc-string and args tab-stops

```clojure
  {:name "defn"
   :detail "Create public function"
   :snippet "(defn ${1:name}\n  \"${2:docstring}\"\n   [${3:args}]\n  $0)"}
```

A `defn` form with private metatdata. Including name, doc-string and args tab-stops

```clojure
  {:name "defn-"
   :detail "Create public function"
   :snippet "(defn ^:private ${1:name}\n  \"${2:docstring}\"\n   [${3:args}]\n  $0)"}
```

A namespace form with name, doc-string and require tab-stop.

```clojure
  {:name "ns"
   :detail "Create ns"
   :snippet "(ns ${1:name}\n  \"${2:docstring}\"\n  ${3:require})"}
```


## Clojure CLI aliases and library dependencies

Add Clojure CLI alias to `deps.edn`, with an `:extra-paths` and `:extra-deps` section

```clojure
  {:name "deps-alias"
   :detail "deps.edn alias with extra path & deps"
   :snippet
   ":${1:category/name}
    {:extra-paths [\"${2:path}\"]
     :extra-deps {${3:deps-maven or deps-git}}}$0"}
```


Add a Maven style dependency to a Clojure CLI `deps.edn` project.

```clojure
  {:name "deps-maven"
   :detail "deps.edn Maven dependency"
   :snippet
   "${1:domain/library-name} {:mvn/version \"${2:1.0.0}\"}$0"}
```


Add a dependency from a Git repository, where the library is named after the remote Git repository, i.e io.github.user|org/library-name for the GitHub repository https://github.com/user|org/library-name.

The `:git/sha` defines a specific commit to use for the dependency.


```clojure
  {:name "deps-git"
   :detail "deps.edn Git dependency"
   :snippet
   "${1:domain/library-name}
       {:git/sha \"${2:git-sha-value}\"}$0"}
```

Additionally a Git tag can be specified, enabling the use of the short SHA value for `:git/sha` (short sha is the first 7 characters of the 40 character SHA-1 value).

A Git client can obtain the short form of a SHA from a Git repository

```bash
git rev-parse --short 1e872b59013425b7c404a91d16119e8452b983f2
```


```clojure
  {:name "deps-git-tag"
   :detail "Git dependency"
   :snippet
   "${1:domain/library-name}
      {:git/tag \"${2:git-tag-value}\"
       :git/sha \"${3:git-sha-value}\"}$0"}
```

If a library is not named after the domain of the Git repository, the URL of the Git repository must be specified using the `:git/url` key.


```clojure
  {:name "deps-git-url"
   :detail "Git URL dependency"
   :snippet
   "${1:domain/library-name}
      {:git/url \"https://github.com/$1\"
       :git/sha \"${2:git-sha-value}\"}$0"}
```

Add a library dependency that is a local Clojure project.

```clojure
  {:name "deps-local"
   :detail "deps.edn Maven dependency"
   :snippet
   "${1:domain/library-name} {:local/root \"${2:/path/to/project/root}\"}$0"}
```

## Require Library Dependencies

Require a library when using REPL driven development in a rich comment block, adding a `(require ,,,)` form when evaluating the use of a library without forcing it to be loaded when loading the namespace.

```clojure
  {:name "require-rdd"
   :detail "require for rich comment experiments"
   :snippet "(require '[${1:namespace} :as ${2:alias}]$3)$0"}
```

A basic `:require` expression for an `ns` form.

```clojure
  {:name "require"
   :detail "ns require"
   :snippet "(:require [${1:namespace}])$0"}
```

A `:require` expression for an `ns` form, including a `:as` directive to define an alias for the required namespace.

```clojure
  {:name "require-as"
   :detail "ns require with :as alias"
   :snippet "(:require [${1:namespace} :as ${2:alias}]$3)$0"}
```

A `:require` expression for an `ns` form, including a `:refer` directive to include specific function definitions and vars by name.

```clojure
  {:name "require-refer"
   :detail "ns require with :refer"
   :snippet "(:require [${1:namespace} :refer [$2]]$3)$0"}
```

It is idiomatic to use require with refer to pull in specific functions and vars from another namespace.  The `use` function is not recommended as it can easily pull more transitive dependencies into the current namespace, causing unexpected results

```clojure
  {:name "use"
   :detail "require refer preferred over use"
   :snippet "(:require [${1:namespace} :refer [$2]])$0"}
```


## Clojure.test snippets

When writing a `deftest`, a new assertion written may be better in a new group.  The `testing` snippet will create a new `testing` form and pull in the following assertion.

```clojure
{:name "deftest"
 :detail "deftest clojure.test"
 :snippet
 "(deftest ${1:name}-test
    (testing \"${2:Context of the test assertions}\"
      (is (= ${3:assertion-values}))$4))
  $0"}
```

Create a new assertion group using the `clojure.test/testing` form.

Using `testing` before an assertion form pull that assertion into the group

```clojure
  {:name "testing"
   :detail "testing clojure.test"
   :snippet "(testing \"${1:description-of-assertion-group}\"\n $0)"}
```

Define an `is` assertion for a `deftest`

```clojure
  {:name "is"
   :detail "assertion for clojure.test"
   :snippet "(is (= ${1:function call} ${2:expected result}))$0"}
```
