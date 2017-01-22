# Evaluating Clojure

Your Clojure code can be evaluated in the REPL buffer or in the code buffer itself.

> I rarely use the REPL buffer directly, preferring to evaluate in the code buffer.

Some common workflows are to write code in the clojure buffer and then either:

* Call expressions from the REPL buffer
* Evaluate expressions in the clojure code buffer (results inline)
* Evaluate expressions in the clojure code buffer and send to REPL buffer
* Continual (live) evaluation with Enlighten mode

This section will give examples of these common workflows.


## Quick reference

The evaluation menu for Clojure is available via `SPC m e` or `M-RET e`

![Spacemacs - Clojure - Evaluate menu](/images/spacemacs-clojure-evaluate-menu.png)

Evaluation commands for Clojure are:

| Spacemacs   | Major mode  | Emacs     | Evil      | Command                            |
|-------------|-------------|-----------|-----------|------------------------------------|
| `SPC m e b` | `M-RET e b` | `C-c C-k` | `, m e b` | `cider-eval-buffer`                |
| `SPC m e r` | `M-RET e r` | `C-c C-r` | `, m e r` | `cider-eval-region`                |
| `SPC m e e` | `M-RET e e` | `C-x C-e` | `, m e e` | `cider-eval-last-sexp`             |
| `SPC m e f` | `M-RET e f` | `C-x C-f` | `, m e f` | `cider-eval-defun-at-point`        |
|             |             | `C-c C-p` |           | `cider-pprint-eval-last-sexp`      |

> TODO: Toggle for enlighten mode


