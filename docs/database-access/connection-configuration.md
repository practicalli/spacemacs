# Configure connections

Commonly used databases are easier to work with when their connection details are defined in the Emacs configuration.

Connection configuration should be added to the `dotspacemacs/user-config` section of the Spacemacs configuration file (`SPC f e d` )


## A single connection

Set the `sql-postgres-login-params` variable to define a single PostgreSQL connection.  There are similar variables for each type of database.


```lisp
(setq sql-postgres-login-params
      '((user :default "username")
        (database :default "database-name")
        (server :default "localhost")
        (port :default 5432)))
```

++comma++ ++"e"++ ++"e"++ to evaluate with the cursor after the closing paren of the setq expression


### Multiple database connections


```lisp
(setq sql-connection-alist
      '((game-scores (sql-product 'postgres)
                     (sql-port 5432)
                     (sql-server "localhost")
                     (sql-user "username")
                     (sql-password "secret")
                     (sql-database "game-scores"))
        (customer-accounts (sql-product 'postgres)
                  (sql-port 5432)
                  (sql-server "123.ec2.aws.com")
                  (sql-user "username")
                  (sql-password "secret")
                  (sql-database ""))))
```

!!! HINT "Use encrypted password"
    Use an [Encrypted password](#encrypt-connection-password) when connecting to databases containing sensitive data or leave out the password from the connection configuration and Emacs will prompt

    A password if okay if using a local database, or connecting to a database via a read-only account where the database contains only non-sensitive data


## Connection helper functions

```lisp
(defun practicalli/db-connect-sql-server (product connection)
  ;; remember to set the sql-product, otherwise, it will fail for the first time
  ;; you call the function
  (setq sql-product product)
  (sql-connect connection))
```

Define interactive functions that call a specific server, so they can be called without providing arguments and therefore be bound to keys very easily.

```lisp
(defun practicalli/db-connect-sql-game-scores ()
  (interactive)
  (practicalli/db-connect-sql-server 'postgres 'game-scores))

(defun practicalli/db-connect-sql-cutomer-accounts ()
  (interactive)
  (practicalli/db-connect-sql-server 'postgres 'customer-accounts))
```

Define key bindings to call the db connections, e.g. `SPC o d g` for game server and `SPC o d c` for customer accounts

```lisp
  (spacemacs/set-leader-keys "odg" 'practicalli/db-connect-sql-game-scores)
  (spacemacs/set-leader-keys "odc" 'practicalli/db-connect-sql-cutomer-accounts)
```

## Encrypt connection password

Create a `db-connection-secrets.el.gpg` file to hold one or more passwords, using the key name used to define the rest of the database connection in `sql-connection-alist`

Add your password to that file like this. Make sure the key of this alist is the same with the key you defined before in sql-connection-alist (in this case server1 and server2).


```lisp
(setq practicalli/database-account-passwords
      '((server1 "password1")
        (server2 "password2")))
(provide 'practicalli/database-account-passwords)
```

Save the file and choose the encryption method that you want, or just skip it to use the default symmetric encryption method.

Now, remove the password info in the sql-connection-alist and modify the my-sql-connect function that we have defined in the previous step to load the password from file

```lisp
(setq sql-connection-alist
      '((server1 (sql-product 'postgres)
                  (sql-port 5432)
                  (sql-server "localhost")
                  (sql-user "user")
                  (sql-database "db1"))
        (server2 (sql-product 'postgres)
                  (sql-port 5432)
                  (sql-server "localhost")
                  (sql-user "user")
                  (sql-database "db2"))))

(defun my-sql-connect (product connection)
  ;; load the password
  (require my-password "my-password.el.gpg")

  ;; update the password to the sql-connection-alist
  (let ((connection-info (assoc connection sql-connection-alist))
        (sql-password (car (last (assoc connection my-sql-password)))))
    (delete sql-password connection-info)
    (nconc connection-info `((sql-password ,sql-password)))
    (setq sql-connection-alist (assq-delete-all connection sql-connection-alist))
    (add-to-list 'sql-connection-alist connection-info))

  ;; connect to database
  (setq sql-product product)
  (sql-connect connection))
```

When activated, the my-sql-connect function will prompt for the password to decrypt the my-password.el.gpg file. However, it will ask for password just once and only when you active the my-sql-connect function so that you will have to enter the password just when you need to use it.

> Ensure that the `db-connection-secrets.el.gpg` file can be located inside the Emacs `load-path`.
