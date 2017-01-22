# Evaluating a Namespace

To evaluate the whole namespace of a Clojure file, select the buffer containing the clojure file and evaluate the buffer.  This will read all the expressions from top to bottom and show the result in the mini-buffer

You can also select a region of the code, `C-SPC`, and evaluate that region.  This is useful for evaluating several expressions at once, which will again be evaluated top to bottom, without having to evaluate the whole buffer.  Selecting a whole buffer and evaluating the region is the same as evaluating the buffer.

| Spacemacs   | Major mode  | Emacs     | Evil      | Command             |
|-------------|-------------|-----------|-----------|---------------------|
| `SPC m e b` | `M-RET e b` | `C-c C-k` | `, m e b` | `cider-eval-buffer` |
| `SPC m e r` | `M-RET e r` | `C-c C-r` | `, m e r` | `cider-eval-region` |


> **Note** With the `src/spacemacs-worshop/core.clj` file open, evaluate the whole namespace


The results of `print` or `println` expressions are sent to the REPL buffer.

> TODO: Insert image / video
