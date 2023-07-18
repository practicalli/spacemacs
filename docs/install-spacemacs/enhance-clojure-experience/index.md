# Enhanced Clojure experience

Enhance the **clojure** layer by adding automatic linting and refator tools with Clojure LSP and recommended CIDER options.  Complement the Clojure layer with general development tools including a git client (Magit), markdown and org-mode support.

!!! HINT "Practicalli Spacemacs user config"
    [:fontawesome-brands-github: practicalli/spacemacs-config](/spacemacs/install-spacemacs/#clone-practicalli-spacemacs-configuration) provides a comprehensive configuration for Clojure development

| Layer name         | Description                                                                                                                                                                         |
|--------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `auto-completion`  | complete names of functions and symbol names, also list snippets.                                                                                                                   |
| `clojure`          | [CIDER](https://docs.cider.mx), optionally with [clj-refactor](https://github.com/clojure-emacs/clj-refactor.el/wiki) and [clj-kondo](https://github.com/borkdude/clj-kondo) linter |
| `git`              | git version control with [Magit](https://magit.vc/) in full screen, with fringe highlighting of changes in buffers                                                                  |
| `github`           | GitHub API for remote repositories and gists                                                                                                                                        |
| `lsp`              | language server protocol - static analysis driven editing features                                                                                                                  |
| `markdown`         | writing project descriptions in README.md and other markdown files                                                                                                                  |
| `multiple-cursors` | multiple concurrent edits with more than one cursor `g r`                                                                                                                           |
| `org`              | write documentation, organize tasks with [org-mode](/org-mode/)                                                                                                                     |
| `spell-checking`   | spell check as you type using your Operating System spell checker `SPC S s`                                                                                                         |
| `syntax-checking`  | syntax checking / linting as you type (flycheck with clj-kondo for Clojure)                                                                                                         |
| `treemacs`         | visual file system browser (file explorer) `SPC p t`                                                                                                                                |
| `version-control`  | general version control features, eg. ediff, fringe highlights                                                                                                                      |

!!! INFO "Install clj-kondo binary"
    Automatic linting requires the clj-kondo binary installed on the operating system path, or the Clojure LSP server which contains clj-kondo.
    [Practicalli Clojure](https://practical.li/clojure/clojure-cli/install/){target=_blank} contains install instructions for these tools.


## Add layers

`SPC f e d` opens the `.spacemacs` configuration file (`M-m f e d` holy mode)

Use `SPC s s` and start typing `configuration-layers` to search for the `dotspacemacs-configuration-layers` section.  `RTN` to jump to the highlighted line, `C-j` to move down the matching lines, `C-k` to move up.

Either copy the `dotspacemacs-configuration-layers` from practicalli/spacemacs.d or copy the individual configurations in the rest of this page.

`SPC f s` to save the file.

`SPC q r` to restart Spacemacs which will load and configure all the new layers and their Emacs packages.


!!! Hint "Reload Configuration or Restart Emacs"
    ++spc++ ++"q"++ ++"r"++ to restart Emacs with a new configuration is recommended when making a big change or adding layers.
    ++spc++ ++"f"++ ++"e"++ ++R++ to reload the `~/.spacemacs` configuration for smaller changes.

[Practicalli Spacemacs Example Configuration](https://github.com/practicalli/spacemacs.d/init.el){target=_blank .md-button }


## Auto-completion

Enable auto-completion for programming languages.  In Clojure this includes functions, namespaces and other symbols.

Yasnippet are included in the auto-completion popup and are sorted with the most frequently used snippets first.

```emacs
(auto-completion :variables
                 auto-completion-enable-help-tooltip t
                 auto-completion-enable-snippets-in-popup t
                 auto-completion-enable-sort-by-usage t)
```

To have auto-completion as soon as typing starts, add `auto-completion-idle-delay nil` to the auto-completion variables


## Clojure

Enable Clojure support but differ the backend to Clojure LSP rather than CIDER.  The clojure-lsp binary should be downloaded automatically.

Enable the kaocha-runner to use Kaocha test runner from within the REPL.

```emacs
(clojure :variables
         cider-repl-display-help-banner nil      ;; disable help banner
         cider-pprint-fn 'fipp                   ;; fast pretty printing
         cider-overlays-use-font-lock t
         cider-repl-buffer-size-limit 100        ;; limit lines shown in REPL buffer to prevent performance issues
         clojure-indent-style 'align-arguments
         clojure-align-forms-automatically t
         clojure-toplevel-inside-comment-form t  ;; evaluate expressions in comment as top level
         clojure-enable-kaocha-runner t)
```

Add the variable `cider-result-overlay-position 'at-point` to show results shown right after expression (useful for evaluated a nested expression). Otherwise results from evaluating expressions show at the end of the top-level expression.


## Git and GitHub

Enable Magit Git client in Emacs and open Magit Status, `SPC g s` full screen (q restores previous layout). Show word-granularity differences in current diff hunk.

Enable GitHub features to clone repositories, push commits and create pull requests (Magit Forge) all from within Emacs.

Enable fringe highlight of version control (Git) changes in buffers

```emacs
(git :variables
     git-magit-status-fullscreen t
     magit-diff-refine-hunk t
     git-enable-magit-todos-plugin t)
github
(version-control :variables
                 version-control-diff-tool 'diff-hl
                 version-control-global-margin t)
```


## Language Server Protocol (LSP)

Clojure LSP provides common editor features across all Clojure aware editors.  A configuration with minimal visual impact.

```emacs
(lsp :variables
     ;; Formatting and indentation
     lsp-enable-on-type-formatting t
     lsp-enable-indentation t
     lsp-enable-snippet t

     lsp-enable-symbol-highlighting t

     ;; popup documentation
     lsp-ui-doc-enable t               ;; documentation popups
     lsp-ui-doc-show-with-cursor nil   ;; doc popup triggered by cursor
     lsp-ui-doc-show-with-mouse nil    ;; doc popup triggered by mouse
     lsp-ui-doc-delay 1                ;; delay in seconds for popup to display
     lsp-ui-doc-include-signature t    ;; include function signature
     ;; lsp-ui-doc-position 'top       ;; top bottom at-point
     ;; lsp-ui-doc-alignment 'window   ;; frame window

     ;; code actions and diagnostics text as right-hand side of buffer
     lsp-ui-sideline-enable nil
     lsp-ui-sideline-show-code-actions nil
     ;; lsp-ui-sideline-delay 500
     ;; lsp-ui-sideline-show-diagnostics nil

     ;; function reference count and test coverage
     lsp-lens-enable t

     ;; Efficient use of space in treemacs-lsp display
     treemacs-space-between-root-nodes nil

     ;; Optimization for large files
     lsp-file-watch-threshold 10000
     lsp-log-io nil)
```


## Multiple cursors

Edit multiple lines of text concurrently by creating multiple cursors, especially useful for editing the form of lines which have different values.

```emacs
multiple-cursors
```

## Org-mode

Enable Spacemacs Org-mode with support for a range of additional features useful for development, including a custom TODO list workflow.

```emacs
(org :variables
     org-enable-github-support t
     org-enable-bootstrap-support t
     org-enable-reveal-js-support t
     org-want-todo-bindings t
     org-enable-org-journal-support t
     org-journal-dir "~/projects/journal/"
     org-journal-file-format "%Y-%m-%d"
     org-journal-date-prefix "#+TITLE: "
     org-journal-date-format "%A, %B %d %Y"
     org-journal-time-prefix "* "
     org-journal-time-format ""
     org-journal-carryover-items "TODO=\"TODO\"|TODO=\"DOING\"|TODO=\"BLOCKED\"|TODO=\"REVIEW\""

     ;; org-enable-jira-support t
     ;; jiralib-url "https://org-domain.atlassian.net:443"
     )
```


## Layouts

spacemacs-layouts layer added to set variables, `SPC TAB` restricted to current layout buffers

Kill buffers when killing layer - SPC l x

```emacs
(spacemacs-layouts :variables
                   spacemacs-layouts-restrict-spc-tab t
                   persp-autokill-buffer-on-remove 'kill-weak)
```


## Configure Doom modeline

Configuration used by Practicalli for the Doom modeline, based on the configuration: [seagle0128/doom-modeline](https://github.com/seagle0128/doom-modeline#customize)

```emacs
(spacemacs-modeline :variables
                    doom-modeline-height 12
                    doom-modeline-major-mode-color-icon t
                    doom-modeline-buffer-file-name-style 'relative-to-project
                    doom-modeline-display-default-persp-name t
                    doom-modeline-minor-modes nil
                    doom-modeline-modal-icon nil)
```


## Spell checking

Spell as you type with Flyspell package, which requires external command such as ispell, hunspell, aspell

`SPC S s` to check the spelling of the current word

```emacs
spell-checking
```


## Programming Ligatures

Support font ligatures (fancy symbols) in all programming language modes, when using Fira Codes and other fonts that support ligatures.

Including ligatures for text-mode may cause issues with org-mode and magit.

```emacs
(unicode-fonts :variables
               unicode-fonts-enable-ligatures t
               unicode-fonts-ligature-modes '(prog-mode))
```
