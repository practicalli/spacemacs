## Debug core.async
<!-- TODO: WIP: debug core.async -->
Push extra information onto the channel that can be ignored when debugging is not required.


## ClojureScript: Output to Browser console log

You can't have the put operation in the call stack of a dispatch error. That is why it is async.

You need to e. g. pr-str the dispatched value and make an educated guess where it was sent from. If the error happens while calling put it usually means you you called put on sth. that is not a channel.

Use an expression to wrap a form

```clojure
(doto form (->> (pr-str) (str "DEBUG: ") js/console.log))
```


Logging to the console tends to be more effective than breakpoint debugging in the browser developer tools.

Add more detail such as function name, vars and even line number

Emacs Lisp function to wrap a form with the console log expression

```elisp
(defun cljs-dbg ()
  (interactive)
  (forward-char)
  (beginning-of-sexp)
  (insert "(doto ")
  (end-of-sexp)
  (insert " (->> pr-str (str \"DEBUG: \") js/console.log))"))

(global-set-key (kbd "C-c C-d") 'cljs-dbg)
```

Use structured editing raise to raise the original form to remove the debug code.
