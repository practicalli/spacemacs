# Linting

Linting shows Clojure syntax errors and recommends idiomatic use of Clojure.

When a linter is used with the flycheck package or if using Clojure LSP (clj-kondo), code is checked as its typed reducing the number of bugs you write instantly.

When using Clojure LSP linting is already enabled, otherwise [configure the Spacemacs Clojure layer with clj-kondo](clj-kondo.md), the currently recommended linter for Clojure.

![clj-kondo linter](https://raw.githubusercontent.com/borkdude/clj-kondo/b310605dc23689424e2f2d273e6e4b402f7138d7/screenshots/vscode.png)


| Linters available                                  | Description                                                            |
|----------------------------------------------------|------------------------------------------------------------------------|
| [clj-kondo](https://github.com/borkdude/clj-kondo) | [Recommended] A new linter written in Clojure with many new features   |
| [Eastwood](https://github.com/jonase/eastwood)     | Linter uisng tools.analyzer & tools.analyzer.jvm to inspect namespaces |

> [Eastwood-Squiggly](/improving-code/linting/eastwood-squiggly.md) continually runs Eastwood in Emacs and repeatedly reloads Clojure code in the REPL, potentially causing unintended effects.


## Continuous Integration workflow

clj-kondo and Eastwood can be run as a command line tool, either before making local commits or as part of a Continuous Integration (CI) workflow.

With a CD/CI server a linter can provide detailed analysis of the code before merging pull requests or packaging for deployment.  Its like an automated code review to ensure you are following an idiomatic approach in your code.
