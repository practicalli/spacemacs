# Formatting Code

Spacemacs automatically formats code as its written.

`, =` or `M-RET =` is the format menu in Spacemacs across all languages

`TAB` indents the current line of code (or selected region).  Not that `TAB` may also trigger auto-completion too.


!!! INFO "Clojure Style Guide"
   [The Clojure Style Guide](https://guide.clojure.style/){target=_blank} is a detailed guide to common code styles and idioms.  Adopting a style guide that follows most of these recommentations will help ensure code is easier to read and maintain by future Clojure developers


## Cider format tools

`, = b` (`cider-format-buffer`) - format the Clojure code in the current buffer.

`, = l` (`clojure-align`) - vertically align the current line within the context of the top level form or selected area


!!! EXAMPLE "Vertically align the values in a map"
    ```clojure
    ;; Before aligning arguments
    (def my-map
      {:a-key 1
       :other-key 2})

    ;; After aligning arguments
    (def my-map
      {:a-key     1
       :other-key 2})
    ```

!!! INFO "Clojure automatic align"
    `clojure-indent-style 'align-arguments` clojure layer variable automatically aligns arguments when triggering indentation, i.e. pressing ++tab++

    [:fontawesome-brands-github:practicalli/spacemacs-config](https://github.com/practicalli/spacemacs-config){target=_blank} already containes this variable in the clojure layer

    [Indentation of function forms](https://github.com/clojure-emacs/clojure-mode#indentation-of-function-forms){target=_blank .md-button}
    [Vertically align s-expressions](https://github.com/clojure-emacs/clojure-mode#vertical-alignment){target=_blank .md-button}


??? WARNING "Aggressive Indent mode and Clojure LSP clash"
    `aggressive-indent-mode` set as a clojure layer variable will automatically adjust indentation as code is entered into the buffer.

    Aggressive indent mode and Clojure LSP live linting will interact with each others changes and cause very strange side effects.  Either use Clojure LSP live linting or aggressive indent mode, but never both together.

    Enable aggressive indent mode by adding the a hook in the `dotspacemacs/user-config` section of the Spacemacs user configuration
    ```elisp title="dotspacemacs/user-config section of .config/spacemacs/init.el"
    (add-hook 'clojure-mode-hook #'aggressive-indent-mode)
    ```
    To [disable Clojure LSP live linting](https://clojure-lsp.io/settings/#disable-linter){target=_blank}
    ```clojure title=".config/clojure-lsp/config.edn"
    {:linters {:clj-kondo {:level :off}
               :clj-depend {:level :off}}}
    ```
    ![Spacemacs CIDER - aggressive indent](https://raw.githubusercontent.com/Malabarba/aggressive-indent-mode/master/lisp-example.gif)
    [Auto-indent code automatically](https://emacsredux.com/blog/2016/02/07/auto-indent-your-code-with-aggressive-indent-mode/){target=_blank .md-button}


## Clojure LSP

Clojure LSP uses cljfmt which has a large number of very strict rules, although all rules can be tailored or disabled as required.

Add format rules to `.config/clojure-lsp/cljfmt.edn` file, adding `:cljfmt-config-path "cljfmt.edn"` setting in `.config/clojure-lsp/config.edn` to make use of those rules.

??? EXAMPLE "cljfmt rules from Practicalli Clojure LSP Config"
    [:fontawesome-brands-github: practicalli/clojure-lsp-config](https://github.com/practicalli/clojure-lsp-config){target=_blank} provides a cljfmt configuration used by Clojure LSP to automatically format code in the current buffer.

    Several of the more strict cljfmt rules have been disabled to help keep code readable, e.g. allowing more than one blank line between code expressions.
    ```clojure title=".config/clojure-lsp/cljfmt.edn"
    {;; Clojure format
     ;; https://github.com/weavejester/cljfmt

     :cljfmt
     {;; correct indentation - see cljfm indents
      :indentation?                          true

      ;; remove whitespace surrounding inner forms
      :remove-surrounding-whitespace?        true

      ;; remove trailing whitespace in lines
      :remove-trailing-whitespace?           true

      ;; insert whitespace missing from between elements
      :insert-missing-whitespace?            true

      ;; Delete more than one consecutive blank line - annoying
      :remove-consecutive-blank-lines?       false

      ;; Remove spaces not used for indentation
      :remove-multiple-non-indenting-spaces? true

      ;; break hashmaps onto multiple lines
      :split-keypairs-over-multiple-lines?   true

      ;; Use #re for regex indents configuration
      ;; :cljfmt {:indents {#re ".*" ns [[:inner 0] [:inner 1]]}}
      :indents {}}}
    ```


## Command Line format

[cljstyle](https://practical.li/clojure/clojure-cli/clojure-style/){target=_blank} is a binary tool for checking and updating formatting for all Clojure files, following the Clojure style guide and very similar to the format of cljfmt tool from Clojure LSP.

[:fontawesome-brands-github: cljstyle releases page](https://github.com/greglook/cljstyle/releases){target=_blank} contains operating system specific binary files.  Download and install the appropriate file in the operating system execution path.

??? HINT "Recommended Linux install location"
    Extract the `cljstyle` binary from `cljstyle_xxx_linux.tar.gz` archive file to `$HOME/.local/bin/` which should already be on the operating system path.

Check the format of all clojure files and print a report that includes diff view of recommended format changes
```shell
cljstyle check
```

Or automatically update all Clojure files with any changes to their formatting (recommend adding or committing changes into version control first, to help identify format changes and roll back any undesirable formatting)

```shell
cljstyle fix
```

[Using cljstyle and zprint for clojure formatting](https://practical.li/clojure/clojure-cli/clojure-style/){target=_blank .md-button}


## Continuous Integration

[:fontawesome-brands-github: Setup Clojure GitHub Action](https://github.com/DeLaGuardo/setup-clojure){target=_blank} includes cljstyle and zprint as optional tools to run as part of a continuous integration workflow.

!!! EXAMPLE "Example GitHub workflow for code quality"
    ```yaml
    name: Test and Package project
    on:
      pull_request:
      push:
        branches:
          - main
    jobs:
      clojure:
        runs-on: ubuntu-latest
        steps:
          - name: Checkout
            uses: actions/checkout@v3

          - name: Cache Clojure Dependencies
            uses: actions/cache@v3
            with:
              path:
                - ~/.m2
                - ~/.gitlibs
              key: cache-${{ hashFiles('**/deps.edn') }}
              restore-keys: clojure-deps-

          - name: Prepare java
            uses: actions/setup-java@v3
            with:
              distribution: 'temurin'
              java-version: '17'

          - name: Install clojure tools
            uses: DeLaGuardo/setup-clojure@9.5
            with:
              cli: 1.11.1.1165    # Clojure CLI based on tools.deps
              cljstyle: 0.15.0 # cljstyle
              clj-kondo: 2022.10.05 # Clj-kondo

          - name: Run Unit tests
            run: clojure -X:test/run

          - name: "Lint with clj-kondo"
            run: clj-kondo --lint deps.edn src resources test --config .clj-kondo/config-ci.edn

          - name: "Check Clojure Style"
            run: cljstyle check --report
    ```

[Practicalli GitHub Workflow for a Clojure project](https://practical.li/clojure/clojure-cli/clojure-style/){target=_blank .md-button}
[Build and run Clojure with Multi-stage Dockerfile](https://practical.li/blog/posts/build-and-run-clojure-with-multistage-dockerfile/){target=_blank .md-button}
