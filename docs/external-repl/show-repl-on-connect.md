# Show REPL Buffer

> #### Hint::Minimise use of REPL buffer
> When developing code it is more effective to evaluate in the source code buffers.

Spacemacs does not automatically show the Clojure REPL buffer when connecting to a REPL (`cider-jack-in-clj`).

`, s s` opens and switches to the REPL buffer. Once the REPL buffer is open, `, s s` toggles focus between the REPL and source code buffers.

Alternatively, `SPC b b` opens the buffer list. Typing `repl` narrows to REPL buffers. `C-j` and `C-k` navigate the buffer list and `RET` selects the buffer.

A buffer for each Clojure REPL & ClojureScript REPL process will be shown in the buffer list.


## Configure REPL Buffer size limit

By default, standard out (printlin and logs to console) will be printed in the REPL buffer.

Logging into the REPL buffer, especially logs with verbose output, can slow down Emacs performance.

Add `cider-repl-buffer-size-limit 100` to the `cider` layer to limit lines shown in REPL buffer.  Only that number of lines will be retailed in the buffer, with any more lines automatically deleted.  This should keep the REPL buffer more responsive.

```elisp
(clojure :variables
         cider-repl-buffer-size-limit 100)
```


## Show REPL buffer automatically

To automatically show the REPL buffer once you have connected, add the following code to the `dotspacemacs/user-config` section of the `.spacemacs` file.

```elisp
(clojure :variables
         cider-repl-pop-to-buffer-on-connect t)
```

The REPL buffer will open as an additional window in the current frame.


## Slow REPL buffer

`SPC SPC fundamental-mode` will switch off the text formatting and help the REPL buffer should be faster to respond.

However, fundamental-mode should be a last resource as it limits the usefulness of the REPL buffer.
