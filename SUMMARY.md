# Summary

* [Introduction](introduction.md)
    * [REPL Driven Development](repl-driven-development/index.md)
    * [Why Spacemacs](why-spacemacs/index.md)
        * [Extensive Language Support](why-spacemacs/extensive-language-support.md)
        * [Simple Layers](why-spacemacs/layers.md)
            * [Clojure Layer](why-spacemacs/clojure-layer.md)
        * [Mnemonic Menu](why-spacemacs/mnemonic-menu.md)
        * [A State for everything](why-spacemacs/states.md)
        * [Transient state menus](why-spacemacs/transient-state-menus.md)
        * [Discoverable](why-spacemacs/helm.md)
            * [Helm Transient State](why-spacemacs/helm-transient-state.md)
        * [Structural editing](why-spacemacs/structural-editing.md)
        * [Project & File navigation](why-spacemacs/project-file-navigation.md)
        * [Layouts](why-spacemacs/layouts.md)
    * [Spacemacs mini cheatsheet](spacemacs-mini-cheatsheet.md)
    * [Contributing](introduction/contributing.md)

## Installing Spacemacs

* [Before you start](before-you-start/index.md)
    * [Install Emacs](before-you-start/install-emacs.md)
    * [Install Java](before-you-start/install-java.md)
    * [Install Clojure](before-you-start/install-clojure.md)
    * [Command Line Tools](before-you-start/recommended-command-line-tools.md)
* [Install Spacemacs](install-spacemacs/index.md)
    * [Manual Configuration](install-spacemacs/manual-configuration.md)
        * [Add Clojure layer](install-spacemacs/clojure-layer.md)
        * [Enhance Clojure experience](install-spacemacs/enhance-clojure-experience.md)
            * [Smartparens](install-spacemacs/smartparens.md)
            * [Evil Structural editing](install-spacemacs/evil-structural-editing.md)
            * [Clojure Fancify Symbols](install-spacemacs/fancify-symbols.md)
            * [clj-kondo via LSP](install-spacemacs/clj-kondo-via-lsp.md)
        * [Clojure-lsp](install-spacemacs/clojure-lsp/index.md)
            * [Configure lsp and Cider](install-spacemacs/clojure-lsp/configure-lsp-and-cider.md)
            * [Snippets](install-spacemacs/clojure-lsp/snippets.md)
        * [Font size and Zooming](install-spacemacs/change-font.md)
        * [Open Maximised / Full Screen](install-spacemacs/maximised-full-screen.md)
        * [Themes](install-spacemacs/themes.md)
        * [Line Numbers](install-spacemacs/line-numbers.md)
        * [Emacs Eshell](install-spacemacs/eshell.md)
* [Starting Emacs instantly](install-spacemacs/emacsclient-server.md)
    * [Git commit messages](install-spacemacs/emacsclient-git-commit-messages.md)
* [Update Spacemacs](install-spacemacs/update.md)
    * [Switch to develop](install-spacemacs/switch-to-develop.md)
<!-- * [Spacemacs on Android](spacemacs-on-android.md) -->
* [Troubleshooting](install-spacemacs/troubleshooting.md)

## Using Spacemacs

* [Spacemacs Basics](spacemacs-basics/index.md)
    * [Frames Windows Buffers](spacemacs-basics/emacs-basics.md)
    * [Working with Projects](spacemacs-basics/working-with-projects/index.md)
        * [Open and Create Files](spacemacs-basics/working-with-projects/open-and-create-files.md)
        * [Managing Buffers](spacemacs-basics/working-with-projects/managing-buffers.md)
            * [Tidying up Buffers](spacemacs-basics/working-with-projects/tidying-up-buffers.md)
        * [Searching Projects](spacemacs-basics/working-with-projects/searching-projects.md)
        * [Projectile](spacemacs-basics/working-with-projects/projectile.md)
        * [Managing Windows](spacemacs-basics/working-with-projects/managing-windows.md)
        * [Layouts](spacemacs-basics/working-with-projects/layouts.md)
        * [Treemacs](spacemacs-basics/working-with-projects/treemacs.md)
        * [Ranger](spacemacs-basics/working-with-projects/ranger.md)
    * [Visual Select](spacemacs-basics/visual-select.md)
    * [Spell Checking](spacemacs-basics/spell-checking.md)
* [Vim Basics](spacemacs-basics/vim-basics.md)
    * [Evil States](spacemacs-basics/evil-states.md)
    * [Speaking Evil](spacemacs-basics/vim-style/speaking-evil.md)
    * [Vim Quick Reference](spacemacs-basics/vim-style/vim-quick-reference.md)
    * [Vim Tips for developers](spacemacs-basics/vim-style/vim-tips-for-developers.md)
    * [Keybinding reference](spacemacs-basics/vim-style/key-binding-reference.md)
* [Evil tools](spacemacs-basics/evil-tools/index.md)
    * [Narrowing](spacemacs-basics/evil-tools/narrowing.md)
    * [helm-swoop](spacemacs-basics/evil-tools/helm-swoop.md)
    * [iedit](spacemacs-basics/evil-tools/iedit.md)
        * [iedit in action](spacemacs-basics/evil-tools/iedit-in-action.md)
        * [iedit a function](spacemacs-basics/evil-tools/iedit-a-function.md)
        * [iedit find replace](spacemacs-basics/evil-tools/iedit-find-replace.md)
        * [iedit replace multiple words](spacemacs-basics/evil-tools/iedit-replace-multiple-words.md)
    * [Replace text across projects](spacemacs-basics/evil-tools/replacing-text-across-projects.md)
* [Multiple Cursors](spacemacs-basics/evil-tools/multiple-cursors.md)
* [Evil g menu](spacemacs-basics/evil-g-menu.md)
* [Evil z menu](spacemacs-basics/evil-z-menu.md)

## Clojure Development

* [Clojure Projects](clojure-projects/index.md)
    * [Adding Files](clojure-projects/adding-files.md)
    * [Rename - Delete Files](clojure-projects/rename-delete-files.md)
    * [Project configuration](clojure-projects/project-configuration.md)
    * [Monorepo / Nested projects](clojure-projects/monorepo-nested-projects.md)
* [The REPL](clojure-repl/index.md)
    * [Connect to REPL](clojure-repl/connect-to-repl.md)
    * [Connect to remote REPL](clojure-repl/connect-to-remote-repl.md)
    * [Portal data visualization](clojure-repl/portal-data-visualization.md)
    * [Reveal data visualization](clojure-repl/reveal-data-visualization.md)
    * [Jack-in to REPL](clojure-repl/jack-in-to-repl.md)
        * [Configure Jack-in](clojure-repl/configure-repl-start.md)
        * [Clear REPL buffer](clojure-repl/clear-repl-buffer.md)
    * [ClojureScript REPL](clojure-repl/clojurescript-repl.md)
    * [Refresh/Restart REPL](clojure-repl/refresh-restart-repl.md)
    * [Component Lifecycle Services](clojure-repl/component-lifecycle.md)
* [Evaluating Clojure](evaluating-clojure/index.md)
    * [Evaluate Expressions](evaluating-clojure/expressions.md)
    * [Un-define names](evaluating-clojure/undefine.md)
    * [Interrupting evaluation](evaluating-clojure/interupt.md)
    * [Macro-expand](evaluating-clojure/macro-expand.md)
    * [Enlighten](evaluating-clojure/enlighten.md)
    * [Inspect](evaluating-clojure/inspect.md)
    * [REPL buffer](evaluating-clojure/evaluate-in-repl-buffer.md)
* [Testing](testing/index.md)
    * [Unit Testing](testing/unit-testing/index.md)
        * [Configure deps.edn project](testing/unit-testing/cider-test-deps-edn-projects.md)
        * [Writing Unit Tests](testing/unit-testing/writing-unit-tests.md)
        * [Running Tests](testing/unit-testing/running-tests.md)
        * [Test report - re-run tests](testing/unit-testing/re-run-tests-from-test-report-buffer.md)
        * [Refactor Tests](testing/unit-testing/refactor-unit-tests.md)
        * [Configure Cider Test Runner](testing/unit-testing/configure-cider-test-runner.md)
        <!-- * [Expectations](testing/unit-testing/clojure-test-expectations.md) -->

    * [Kaocha Test Runner](testing/kaocha-test-runner.md)

    <!-- * [Contract Testing](testing/contract-testing/index.md) -->
    <!-- * [Generative Testing](testing/generative-testing/index.md) -->
    <!-- * [Integration Testing](testing/integration-testing/index.md) -->
    <!-- * [Performance Testing](testing/performance-testing/index.md) -->
    <!-- * [Load/Stress Testing](testing/load-stress-testing/index.md) -->
* [Navigating code](navigating-code/index.md)
    * [Expressions](navigating-code/expressions.md)
    * [Markers](navigating-code/markers.md)
    * [Namespaces](navigating-code/namespaces.md)
    * [Names - Symbols](navigating-code/names-symbols.md)
    * [Function Definitions](navigating-code/function-definitions.md)
    * [Find Usages](navigating-code/find-usages.md)
    * [Java Definitions](navigating-code/java-definitions.md)
        <!-- * [Local Java Sources](navigating-code/local-java-sources.md) -->
    * [Expressions](navigating-code/expressions.md)
    * [Code Folding](navigating-code/code-folding.md)
        * [Folding methods](navigating-code/code-folding-methods.md)
* [Structural Editing](structural-editing/index.md)
    * [cleverparens](structural-editing/cleverparens.md)
    * [Smartparens](structural-editing/smartparens.md)
        <!-- * [Smartparens cheatsheet](structural-editing/smartparens-cheatsheet.md) -->
    * [Lisp State](structural-editing/lisp-state.md)
        * [Wrap Unwrap](structural-editing/lisp-state-wrap-unwrap.md)
        * [Slurp Barf](structural-editing/lisp-state-slurp-barf.md)
        * [Deleting](structural-editing/lisp-state-deleting.md)
        * [Raising](structural-editing/lisp-state-raising.md)
        * [Repeating Commands](structural-editing/repeating-commands.md)
        <!-- * [Splicing](structural-editing/lisp-state-splicing.md) -->
* [Snippets](snippets/index.md)
/home/practicalli/projects/practicalli/books/spacemacs/snippets/yasnippets/add-custom-snippets.md
    * [Yasnippets](snippets/yasnippets/index.md)
        * [Built-in Snippets](snippets/yasnippets/built-in-snippets.md)
        * [Clojure Snippets](snippets/yasnippets/clojure-snippets-reference.md)
        * [Create Snippets](snippets/yasnippets/create-snippets.md)
        * [Writing Snippets](snippets/yasnippets/writing-snippets.md)
        * [Practicalli Snippets](snippets/yasnippets/practicalli-snippets.md)
    * [Clojure LSP](snippets/clojure-lsp/index.md)
        * [Custom Snippets](snippets/clojure-lsp/custom-snippets.md)
        * [Practicalli Snippets](snippets/clojure-lsp/practicalli-snippets.md)
* [Refactor code](refactor/index.md)
    * [Similar function call name](refactor/similar-function-call-name.md)
    * [Within a function](refactor/within-a-function.md)
    * [Within a namespace](refactor/within-a-namespace.md)
    * [ns namespace definitions](refactor/namespace-definitions.md)
    * [Within a project](refactor/within-a-project.md)
    * [Clojure mode](refactor/clojure-mode/index.md)
    * [clj-refactor](refactor/clj-refactor/index.md)
        * [Managing Library Dependencies](refactor/clj-refactor/managing-library-dependencies.md)
        * [Managing Namespaces](refactor/clj-refactor/managing-namespaces.md)
        <!-- * [Forms](refactor/clj-refactor/forms.md) -->
        * [Collections](refactor/clj-refactor/collections.md)
        * [Extracting](refactor/clj-refactor/extracting.md)
        * [Formatting Code](refactor/clj-refactor/formatting-code.md)
* [Debug Clojure](debug-clojure/index.md)
    * [Understanding errors](debug-clojure/understanding-errors.md)
    * [Inspect values](debug-clojure/inspect-values.md)
    * [Cider debug](debug-clojure/cider-debug.md)
    * [Sayid debug & profile](debug-clojure/sayid-debug.md)
* [Improving Code](improving-code/index.md)
    * [Formatting](improving-code/formatting/index.md)
        * [Automatic Indenting](improving-code/formatting/automatic-indenting.md)
        * [Aligning forms](improving-code/formatting/aligning-forms-expressions.md)
    * [Live Linting](improving-code/live-linting.md)
    * [Batch linting](improving-code/batch-linting.md)
    * [Idiomatic code checking](improving-code/idiomatic-code-checking.md)
* [Documentation](documentation/index.md)
    * [Cider doc](documentation/cider-doc.md)
    * [Related functions](documentation/apropos.md)
    * [Javadoc](documentation/javadoc.md)
    * [Comments](documentation/comments.md)
    * [Markdown documentation](markdown-mode/index.md)

## Source Control

* [Source Control Overview](source-control/index.md)
    * [Configure Layers](source-control/configure-layers.md)
    * [Git Configuration](source-control/git-configuration.md)
    * [Forge Configuration](source-control/forge-configuration.md)
        * [Self-hosted Forge](source-control/forge-self-hosted-configuration.md)
* [MaGit Git Client](source-control/magit/index.md)
    * [Create local repository](source-control/magit/create-local-repository.md)
    * [List local repositories](source-control/magit/list-local-repositories.md)
    * [Git Status](source-control/magit/status.md)
        * [MaGit Status Fullscreen](source-control/magit/status-fullscreen.md)
    * [Branching](source-control/magit/branching.md)
    * [Staging changes](source-control/magit/staging-changes.md)
    * [Commit changes](source-control/magit/commit-changes.md)
        * [Create commit](source-control/magit/commit-create.md)
        * [Amend commit](source-control/magit/commit-amend.md)
        * [Extend commit](source-control/magit/commit-extend.md)
        * [Rewrite commit](source-control/magit/commit-rewrite.md)
        * [Tag commit](source-control/magit/tag-commit.md)
    * [Stash changes](source-control/magit/stashing.md)
    * [Remote repositories](source-control/magit/remote-repositories/index.md)
        * [Add Remote](source-control/magit/remote-repositories/add-remote.md)
        * [Clone](source-control/magit/remote-repositories/clone.md)
        * [Checkout remote branch](source-control/magit/remote-repositories/checkout-remote-branch.md)
        * [Pull Changes](source-control/magit/remote-repositories/pull-changes.md)
        * [Push Changes](source-control/magit/remote-repositories/push-changes.md)
        * [Try Pull Requests](source-control/magit/remote-repositories/try-pull-requests.md)
        * [Configure default upstream](source-control/magit/remote-repositories/configure-default-upstream.md)
        * [Configure default push](source-control/magit/remote-repositories/configure-default-push.md)
    * [Forge for GitHub/GitLab](source-control/magit/forge/index.md)
        * [issues](source-control/magit/forge/issues.md)
        * [pull requests](source-control/magit/forge/pull-requests.md)
        * [forks](source-control/magit/forge/forks.md)
    * [Changing History](source-control/magit/changing-history.md)
        * [Squash commits](source-control/magit/commit-squash.md)
        * [Interactive Rebasing](source-control/magit/interactive-rebasing.md)
        * [Reset Commits](source-control/magit/reset-commit-history.md)
    * [Git blame](source-control/magit/blame.md)
    * [Timemachine](source-control/magit/timemachine.md)
    * [Highlight Changes in file](source-control/magit/version-highlighting.md)
    * [Clean up Magit sessions](source-control/magit/clean-up-magit-sessions.md)
* [GitHub](source-control/github/index.md)
    * [Gists](source-control/github/gists.md)
* [GitLab](source-control/gitlab/index.md)



<!-- ## ClojureScript features -->

<!-- * [Clojurescript Overview](clojurescript/index.md) -->
<!--     * [Why Clojurescript](clojurescript/why-clojurescript.md) -->
<!--     * [Build Process](clojurescript/build-process.md) -->
<!-- * [Figwheel-main](figwheel/index.md) -->
<!--     * [ClojureScript REPL](figwheel/clojurescript-repl.md) -->
<!--     * [Live Code Reload](figwheel/live-code-reload.md) -->
<!--     * [Live CSS Reload](figwheel/live-css-reload.md) -->
<!--     * [Error Reporting](figwheel/error-reporting.md) -->
<!--     * [Multiple Environments (repl)](figwheel/multiple-environments.md) -->
<!--     * [Static Content](figwheel/static-content.md) -->
<!--     * [Heads up display](figwheel/heads-up-display.md) -->
<!--     * [Broadcasting](figwheel/broadcasting.md) -->
<!--     * [Other Options](figwheel/other-options.md) -->
<!-- * [Using Figwheel-main](using-figwheel/index.md) -->
<!--     * [Template](using-figwheel/figwheel-main-template.md) -->
<!--     * [Chestnut Template](using-figwheel/chestnut-template.md) -->
<!--     * [Starting Figwheel (Terminal)](using-figwheel/starting-chestnut-terminal.md) -->
<!--     * [Starting Figwheel (Emacs)](using-figwheel/starting-chestnut-emacs.md) -->
<!-- * [Additional Features](clojurescript/additional-features.md) -->
<!--     * [CSS Rainbow Colors](clojurescript/css-rainbow-colors.md) -->

<!-- TODO: shadow-cljs section -->

## Org mode

* [Org-mode](org-mode/index.md)
    * [Headings](org-mode/headings.md)
    * [Lists and checkboxes](org-mode/lists-and-checkboxes.md)
    * [Linking](org-mode/linking.md)
    * [TODO States](org-mode/todo-states.md)
    <!-- * [Get Things Done](org-mode/get-things-done.md) -->
    * [Tables](org-mode/tables.md)
    * [Code Blocks](org-mode/code-blocks.md)
    <!-- * [Yasnippets](org-mode/yasnippets.md) -->
    * [Org-mode tweaks](org-mode/org-mode-tweaks.md)
* [Org-journal](org-mode/org-journal.md)
* [Literate Programming](org-mode/literate-programming/index.md)

## Encryption

* [Encryption](encryption/index.md)
    * [Create gpg key](encryption/create-gpg-key.md)


## Reference
* [Reference](reference/index.md)
    * [Vim - Getting Comfortable](reference/vim/getting-comfortable.md)
    * [Keybindings](reference/keybindings/index.md)
        * [Spacemacs Keybindings](reference/keybindings/spacemacs-keybindings.md)
        * [Vim Keybindings](reference/keybindings/vim-keybindings.md)
        * [Emacs Keybindings](reference/keybindings/emacs-keybindings.md)
        * [Custom Keybindings](reference/keybindings/custom-keybindings.md)
    * [Projectile](reference/projectile.md)
    * [CIDER](reference/cider/index.md)
        * [Config Variables](reference/cider/configuration-variables.md)
    * [Clojure](reference/clojure/index.md)
        * [Strings](reference/clojure/strings.md)
        * [Maths](reference/clojure/maths.md)
        * [Data Structures](reference/clojure/data-structures.md)
        * [Functions](reference/clojure/functions.md)
        * [Control flow](reference/clojure/control-flow.md)
        * [Local Assignment](reference/clojure/local-assignment.md)
* [Alternative tooling](alternative-tooling/index.md)
    * [NeoTree](alternative-tooling/neotree.md)
    * [Silver Searcher - ag](alternative-tooling/silversearcher-ag.md)
    * [Parinfer](alternative-tooling/parinfer.md)
    * [Paredit](alternative-tooling/paredit.md)
    <!-- * [Paredit keybindings](alternative-tooling/paredit-keybindings.md) -->
        * [Paredit: Killing code softly](structural-editing/emacs-killing-code-softly.md)
    * [Joker](alternative-tooling/joker.md)
    * [Leiningen](alternative-tooling/leiningen.md)
    * [External Clojure REPL](external-repl/index.md)
        * [Connect to existing REPL](external-repl/connect-to-running-repl.md)
        * [Switching to REPL](external-repl/switching-to-repl.md)
        * [Show REPL Buffer on connect](external-repl/show-repl-on-connect.md)
        * [REPL Command Menu](external-repl/repl-command-menu.md)
        * [REPL History](external-repl/repl-history.md)
* [MacOSX configuration](os-specific-config/macosx.md)

    <!-- * [Hydra menus](reference/hydra.md) -->

* [Misc](misc/index.md)
    * [Artist mode](misc/artist-mode.md)
    * [Unicode Characters](misc/unicode-characters.md)
    * [Writing Emacs Lisp](writing-emacs-lisp/index.md)
* [Contributors](contributors.md)
<!-- * [About this workshop](introduction/about-this-workshop.md) -->
<!--     * [Workshop conventions](introduction/workshop-conventions.md) -->
<!--     * [Sample Configuration](introduction/sample-configuration.md) -->
<!--     * [Additional resources](introduction/additional-resources.md) -->
<!-- * [Work in progress - messy](work-in-progress.md) -->
<!--     * [Emacs Quick Reference](spacemacs-basics/emacs-quick-reference.md) -->
<!--     * [Paredit](structural-editing/classic-emacs.md) -->
<!--         * [Paredit keybindings](structural-editing/paredit-keybindings.md) -->
<!--         * [Using Paredit](structural-editing/paredit.md) -->
<!-- * [Work in progress - messy](work-in-progress.md) -->
<!--     * [Emacs Quick Reference](spacemacs-basics/emacs-quick-reference.MD) -->

## Emacs development
* [Learning eLisp](emacs-lisp/index.md)
