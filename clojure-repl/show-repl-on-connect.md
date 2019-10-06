# Show REPL Buffer on Connect

Spacemacs does not show the Clojure REPL buffer once you have connected (cider-jack-in).  You can open and jump to the REPL buffer using `, s s`.  This keybinding toggles focus between the repl and code buffers.

You can also open the buffer list, `SPC b b` and if there are many open buffers narrow the list by typing `repl`.  This is useful when you are using ClojureScript, which has two repls (Clojure REPL & ClojureScript REPL).

To automatically show the REPL buffer once you have connected, add the following code to the `dotspacemacs/user-config` section of the `.spacemacs` file.


```elisp
(with-eval-after-load 'cider
  (setq cider-repl-pop-to-buffer-on-connect t))
```

![Spacemacs - Clojure - Show REPL Buffer on Connect](/images/spacemacs-clojure-repl-pop-to-buffer-on-connect.png)

The REPL buffer will open as an additional window in the current frame.
