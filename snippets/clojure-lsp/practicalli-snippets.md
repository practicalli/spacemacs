# Practicalli Snippets for Clojure LSP

Custom snippets created by Practicalli and added via the `:additional-snippets` key in the Clojure LSP configuration (`.lsp/config.edn` or user level configuration).  Snippets are defined as a vector of hash-maps

```clojure
{:additional-snippets [{} {} {} ,,,]}
```

<!-- TODO: create a shared repository for Clojure LSP snippets -->


## Core functions

Create a public var using a `def` form with a doc-string, with placeholders for name and value.

```clojure
{:name "def"
   :detail "def with docstring"
   :snippet "(def ${2:name}\n\"${1:doc-string}\"\n${3:value})$0"}
```


Create a private var using a `def` form with `^:private` meta data and a doc-string, with placeholders for name and value.

```clojure
{:name "def-"
   :detail "def private"
   :snippet "(def ^:private ${1:name}\n\"${2:doc-string}\"\n${3:value})$0"}
```



## Documentation

A comment heading to describe the purpose and important information about the current namesapce.

```clojure
{:name "comment-heading"
   :detail "Comment Header"
   :snippet ";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n;; ${1:Namespace summary title}\n ;;\n ;; ${2:Brief description}\n;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n"}
```

A comment separator for marking logical sections within a namespace, useful for navigating code and identifying opportunities to refactor a namespace into multiple namespaces.

```clojure
{:name "comment-separator"
   :detail "Comment Separator"
   :snippet ";; ${1:Namespace summary title}\n;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n"}
```

A rich comment block typically used to hold function calls to show how to make use of the important aspects of the current namespace.  For example, calls to `start`, `restart`, `stop` functions in a namespace that defines the service life-cycle.

This provides a live executable guide to using the namespace, without being called if the whole namespace is evaluated.

A commented expression is placed before the closing paren to ensure that closing paren is not folded up into the previous line.  This makes it easier to add further code to the rich comment block.

```clojure
{:name "rich-comment"
 :detail "Create rich comment"
 :snippet
 "(comment
    ${0:body}
  #_()) ;; End of rich comment"}
```

A modified rich comment block with clj-kondo configuration to suppress warnings for duplicate function definition names, supporting alternative function implementations as part of a REPL driven development workflow.

```clojure
{:name "rich-comment-rdd"
 :detail "Create comment block"
 :snippet
 "#_{:clj-kondo/ignore [:redefined-var]}
 (comment
   ${0:body}
 #_()) ;; End of rich comment"}
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
    (add-libs '{${1:domain/library-name} {:mvn/version \"${2:1.0.0}\"}})
  ) ;; End of rich comment block
"}
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
   :snippet "(testing \"${1:description-of-assertion-group}\"\n $current-form$0)"}
```
