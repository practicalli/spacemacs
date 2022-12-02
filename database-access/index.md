# Database Access from Emacs

Add the [Spacemacs SQL layer](add-sql-layer-and-lsp.md) to use Emacs as an SQL database client, defining connections to access databases and running SQL queries.

sqls language server (LSP) as an SQL layer backend provides autocompletion, code actions, documentation and formatting.  sqlint (linting) and sqlfmt (formatting) are also supported when installed.

Syntax highlighting for SQL queries supports the dialects of ANSI, DB2, Informix, Ingres, Interbase, Linter, Microsoft, MySQL, Oracle, Postgres, Solid, SQLite, Sybase, Vertica.

SQLi is integrated in Emacs and supports these databases if their client executable is available on the Emacs PATH

Connection configuration can be defined for a specific database, e.g.  `sql-mysql-login-params`.  Multiple database connections are defined using the `sql-connection-alist` variable.

Add connection configuration to the `dotspacemacs/user-config` to the Spacemacs configuration file (`SPC f e d` )

`SPC h SPC sql-help`

> #### Hint::Add Database Configuration to `dotspacemacs/user-config`
> All database configuration and helper functions should be added to the `dotspacemacs/user-config` section of the Spacemacs configuration file, opened with `SPC f e d`

## Resources

* [MySQL installation guide](https://dev.mysql.com/doc/mysql-installation-excerpt/8.0/en/) documents many options for installing MySQL
