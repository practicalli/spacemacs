# Using SQL from Spacemacs

Once the sql layer is installed and connections are configured, connect to a database and run queries from within an Emacs buffer.


## Connect to PostgreSQL

`SPC SPC sql-postgres` will create a database connection using the `sql-postgres-login-params` and prompt for the password.

If the connection is not defined, Emacs prompts for all the server connection information.

An SQLi buffer is created and associated with the current SQL buffer.


## Write and run queries

Type SQL commands into the SQLi buffer to execute

Compose queries in the SQL buffer.  Run a query by selecting the query and run the command `SPC SPC sql-send-region`

(bound to C-c C-r by default) to execute or sql-send-buffer (bound to C-c C-b by default) to execute all the buffer.



## SQL product

sql-product-interactive is an autoloaded interactive Lisp function in ‘sql.el.gz’.

(sql-product-interactive &optional PRODUCT NEW-NAME)

Run PRODUCT interpreter as an inferior process.

If buffer ‘*SQL*’ exists but no process is running, make a new process.

If buffer exists and a process is running, just switch to buffer ‘*SQL*’.

To specify the SQL product, prefix the call with SPC u.  To set the buffer name as well, prefix the call to M-x sql-product-interactive with SPC u SPC u.

(Type C-h m in the SQL buffer for a list of commands.)


## Tweaks


```elisp
(add-hook 'sql-interactive-mode-hook
          (lambda ()
            (toggle-truncate-lines t)))
```


toggle-truncate-lines is an interactive native compiled Lisp function in ‘simple.el’.

It is bound to C-x x t.

(toggle-truncate-lines &optional ARG)

Toggle truncating of long lines for the current buffer.

When truncating is off, long lines are folded.

With prefix argument ARG, truncate long lines if ARG is positive, otherwise fold them.  Note that in side-by-side windows, this command has no effect if ‘truncate-partial-width-windows’ is non-nil.
