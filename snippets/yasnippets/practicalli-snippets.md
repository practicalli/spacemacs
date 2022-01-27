# Practicalli Clojure mode Yasnippets

[Practicalli Snippets for Yasnippet](https://github.com/practicalli/spacemacs.d/tree/live/snippets).


## Clojure.core

Add a def form including a doc-string

```none
# -*- mode: snippet -*-
# name : def with doc-string
# key : def
# contributor : practicalli
# --
(def ${1:name}
  "${2:doc-string}"
  ${3:value})
$0
```

```none
# -*- mode: snippet -*-
# name : def private with doc-string
# key : def-
# contributor : practicalli
# --
(def ^:private ${1:name}
  "${2:doc-string}"
  ${3:value})
$0
```


## Documentation

Creative Commons Licence name, used to update the license in a Leiningen project.clj file and for README.md files to describe a project.

```none
# -*- mode: snippet -*-
# name : cc-license-name
# key : cc-license-name
# contributor : practicalli
# --
"Creative Commons Attribution Share-Alike 4.0 International"
```
Creative Commons Licence URL to complement the Creative Commons Licence name snippet.

```none
# -*- mode: snippet -*-
# name : cc-license-url
# key : cc-license-url
# contributor : practicalli
# --
"https://creativecommons.org/"
```

## Documentation

A comment heading to describe the purpose and important information about the current namesapce.

```none
# -*- mode: snippet -*-
# name : Comment header for namespace
# key : comment-header
# contributor : practicalli
# --
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ${1:Namespace summary title}
;;
;; ${2:Brief description}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
$0
```

A comment separator for marking logical sections within a namespace, useful for navigating code and identifying opportunities to refactor a namespace into multiple namespaces.

```none
# -*- mode: snippet -*-
# name : Comment separator for namespace
# key : comment-separator
# contributor : practicalli
# --
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ${1:Namespace summary title}
```

A rich comment block typically used to hold function calls to show how to make use of the important aspects of the current namespace. For example, calls to start, restart, stop functions in a namespace that defines the service life-cycle.

This provides a live executable guide to using the namespace, without being called if the whole namespace is evaluated.

A commented expression is placed before the closing paren to ensure that closing paren is not folded up into the previous line. This makes it easier to add further code to the rich comment block.


```none
# -*- mode: snippet -*-
# name : Rich comment
# key : rich-comment
# contributor : practicalli
# --
(comment
  ${0:body}
#_()) ;; End of rich comment
```


A modified rich comment block with clj-kondo configuration to suppress warnings for duplicate function definition names, supporting alternative function implementations as part of a REPL driven development workflow.

```none
# -*- mode: snippet -*-
# name : Rich comment with clj-kondo ignore
# key : rich-comment-ignore
# contributor : practicalli
# --
#_{:clj-kondo/ignore [:redefined-var]}
(comment
  ${0:body}
#_()) ;; End of rich comment
```


## Hotload libraries into the REPL

Clojure CLI projects can [hotload library dependencies into a running Clojure REPL using the tools.deps library](https://practical.li/clojure/alternative-tools/clojure-cli/hotload-libraries.html).  This requires starting a REPL with the `clojure.tools.deps.alpha` library as a dependency which can be done by including the [`:lib/hotload` alias from practicalli/clojure-deps-edn](https://github.com/practicalli/clojure-deps-edn#hotload-libraries-into-a-running-repl).  Note this library is alpha and the API could change in future.

Create a rich comment block that requires the `clojure.tools.deps.alpha` namespace and an `add-libs` expression to hotload one or more libraries in a hash-map.  Tab stops with placeholders are included for adding the first library to hotload.

```none
# -*- mode: snippet -*-
# name : Hotload libraries using clojure.tools.deps.alpha
# key : rich-comment-hotload
# contributor : practicalli
# --
;; Rich comment block with redefined vars ignored
#_{:clj-kondo/ignore [:redefined-var]}
(comment
  ;; Add-lib library for hot-loading
  (require '[clojure.tools.deps.alpha.repl :refer [add-libs]])
  (add-libs '{${1:domain/library-name} {:mvn/version "${2:1.0.0}"}$3})

  ) ;; End of rich comment block
```


## Clojure.test

A `deftest` snippet with a `testing` form to group assertions with and

```none
# -*- mode: snippet -*-
# name: deftest clojure.test function
# key: deftest
# contributor: practicalli
# --
(deftest ${1:name}-test
  (testing "${2:Context of the test assertions}"$>
    (is (= ${3:assertion-values}))$4))$>
$0
```


## Library Dependencies

Add a Maven style dependency to a Clojure CLI `deps.edn` project.

```none
# -*- mode: snippet -*-
# name : Clojure CLI maven dependency
# key : deps-maven
# contributor : practicalli
# --
${1:domain/library-name} {:mvn/version "${2:1.0.0}"}
```

Add a dependency from a Git repository, where the library is named after the remote Git repository, i.e io.github.user|org/library-name for the GitHub repository https://github.com/user|org/library-name.

The `:git/sha` defines a specific commit to use for the dependency.

```none
# -*- mode: snippet -*-
# name : deps.edn Git
# key : deps-git
# contributor : practicalli
# --
${1:domain/library-name}
  {:git/sha "${2:git-sha-value}"}$0
```

Additionally a Git tag can be specified, enabling the use of the short SHA value for `:git/sha` (short sha is the first 7 characters of the 40 character SHA-1 value).

A Git client can obtain the short form of a SHA from a Git repository

```bash
git rev-parse --short 1e872b59013425b7c404a91d16119e8452b983f2
```

```none
# -*- mode: snippet -*-
# name : deps.edn Git tag
# key : deps-git-tag
# contributor : practicalli
# --
${1:domain/library-name}
 {:git/tag "${1:git-tag-value}"
  :git/sha "${2:git-sha-value}"}$0
```

If a library is not named after the domain of the Git repository, the URL of the Git repository must be specified using the `:git/url` key.

```none
# -*- mode: snippet -*-
# name : deps.edn Git url
# key : deps-git-url
# contributor : practicalli
# --
${1:domain/library-name}
  {:git/url "https://github.com/${1:}"
   :git/sha "${1:git-sha-value}"}$0
```

Add a library dependency that is a local Clojure project.

```none
# -*- mode: snippet -*-
# name : deps.edn local project dependency
# key : deps-local
# contributor : practicalli
# --
${1:domain/library-name} {:local/root "${2:/path/to/project/root}"}$0
```
