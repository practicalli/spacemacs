# Enhancing the Clojure experience
Enhance the **clojure** layer by adding automatic linting (clj-kondo), refactoring (clj-refactor) and recommended CIDER options.  Complement the Clojure layer with general development tools including a git client (Magit), markdown and org-mode support.

[practicalli/spacemacs.d](/install-spacemacs/#clone-practicalli-spacemacs-configuration) provides a documented configuration of the layers for Clojure development and many useful customization's for Spacemacs.

| Layer name         | Description                                                                                                                                                                         |
|--------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `auto-completion`  | complete names of functions and symbol names, also list snippets.                                                                                                                   |
| `clojure`          | [CIDER](https://docs.cider.mx), optionally with [clj-refactor](https://github.com/clojure-emacs/clj-refactor.el/wiki) and [clj-kondo](https://github.com/borkdude/clj-kondo) linter |
| `elisp`            | edit `.spacemacs` configuration and any Emacs elisp code                                                                                                                            |
| `git`              | git version control with [Magit](https://magit.vc/) in full screen, with fringe highlighting of changes in buffers                                                                  |
| `github`           | GitHub API for remote repositories and gists                                                                                                                                        |
| `helm`             | completion and selection narrowing framework                                                                                                                                        |
| `lsp`              | language server protocol - static analysis driven editing features                                                                           |
| `markdown`         | writing project descriptions in README.md and other markdown files                                                                                                                  |
| `multiple-cursors` | multiple concurrent edits with more than one cursor `g r`                                                                                                                           |
| `org`              | write documentation, organize tasks with [org-mode](/org-mode/)                                                                                                                     |
| `spell-checking`   | spell check as you type using your Operating System spell checker `SPC S s`                                                                                                         |
| `syntax-checking`  | syntax checking / linting as you type (flycheck with clj-kondo for Clojure)                                                                                                        |
| `treemacs`         | visual file system browser (file explorer) `SPC p t`                                                                                                                                |
| `version-control`  | general version control features, eg. ediff, fringe highlights                                                                                                                      |

> ####WARNING::Install clj-kondo binary
>`clj-kondo` automatic linting requires the binary of `clj-kondo` installed on the operating system path in order to work.
> Please read the [clj-kondo install guide](https://github.com/borkdude/clj-kondo/blob/master/doc/install.md) for details.


## Edit .spacemacs and add layers
`SPC f e d` opens the `.spacemacs` configuration file (`M-m f e d` holy mode)

Use `SPC s s` and start typing `configuration-layers` to search for the `dotspacemacs-configuration-layers` section.  `RTN` to jump to the highlighted line, `C-j` to move down the matching lines, `C-k` to move up.

Add the following layers to `dotspacemacs-configuration-layers` ensuring there are no duplicates

```lisp
     (auto-completion :variables
                      auto-completion-enable-help-tooltip t
                      auto-completion-enable-snippets-in-popup t
                      auto-completion-enable-sort-by-usage t)
     (clojure :variables
              ;; clojure-backend 'cider               ;; use cider and disable lsp
              ;; clojure-enable-linters 'clj-kondo    ;; clj-kondo included in lsp
              cider-repl-display-help-banner nil      ;; disable help banner
              cider-pprint-fn 'fipp                   ;; fast pretty printing
              clojure-indent-style 'align-arguments
              clojure-align-forms-automatically t
              clojure-toplevel-inside-comment-form t  ;; evaluate expressions in comment as top level
              cider-result-overlay-position 'at-point ;; results shown right after expression
              cider-overlays-use-font-lock t
              cider-repl-buffer-size-limit 100        ;; limit lines shown in REPL buffer
              )
     emacs-lisp
     (git :variables
          git-magit-status-fullscreen t
          magit-diff-refine-hunk t)
     github
     helm
     markdown
     multiple-cursors
     org
     spell-checking
     syntax-checking
     treemacs
     (version-control :variables
                      version-control-diff-tool 'diff-hl
                      version-control-global-margin t)
```

`SPC f s` to save the file.

`SPC q r` to restart Spacemacs which will load and configure all the new layers and their Emacs packages.


## Reload Configuration or Restart Emacs
`SPC q r` to restart Emacs with the new configuration.  This is the recommended approach when making a big change or adding layers to ensure all the new packages are installed and configured.

For smaller changes you can reload the `~/.spacemacs` configuration using `SPC f e R`.
