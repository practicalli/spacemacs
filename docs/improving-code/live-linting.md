# Live linting

Clojure LSP includes [clj-kondo](https://github.com/borkdude/clj-kondo) which provides live static code analysis of Clojure code as its entered into the buffer.

Linting is supported in all Clojure files (`.clj`, `.cljs`, `.cljc`, `.edn`).

A mark appears in the margin showing line contain code that generates a warning or error.  A wavy underscore shows where on the line the issue is.  Moving the cursor to the underscore will show a pop-up describing the error.

The total number of errors and warnings are show in in the modeline.

![Spacemacs live linting - clj-kondo and modeline errors](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-clojure-modeline-lsp-warnings-errors-light.png#only-light)
![Spacemacs live linting - clj-kondo and modeline errors](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-clojure-modeline-lsp-warnings-errors-dark.png#only-dark)


## Navigate lint errors

`SPC e L` opens a window with a buffer containing the list of linting errors for the current file. Navigate between linting errors using `j` and `k`. `RET` to select an error, focusing the cursor in the other buffer on that error

`SPC b x` to close the buffer and window when you have finished.

![Spacemacs - Clojure Linting - flycheck list errors](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-clojure-linting-flycheck-list-errors-gameboard-light.png#only-light)
![Spacemacs - Clojure Linting - flycheck list errors](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-clojure-linting-flycheck-list-errors-gameboard-dark.png#only-dark)

/home/practicalli/projects/practicalli/graphic-design/editors/spacemacs/screenshots/spacemacs-clojure-modeline-lsp-warnings-errors.png

Keeping the flycheck buffer open will update as you move to linting errors in the source code buffer.

## LSP Peek Errors

`, G e` opens LSP peek popup and shows a full list of errors in the project

![Spacemacs - Clojure Linting - flycheck list errors](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-clojure-lsp-peek-errors-light.png#only-light)
![Spacemacs - Clojure Linting - flycheck list errors](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-clojure-lsp-peek-errors-dark.png#only-dark)
