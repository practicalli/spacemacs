# Add SQL Layer and LSP support

`SPC f e d` to open the Spacemacs configuration.  Add the `sql` layer to the `dotspacemacs-configuration-layers` list.

When `lsp` layer is used then LSP is set as the backend for all layers and will connect to an SQL LSP server when opening a related SQL buffer.

Or manually set LSP as the backend using a layer variable (if `lsp` has not been added to the Spacemacs configuration)

```
(sql :variables
     sql-backend 'lsp)
```


## Install SQL LSP Server

[sqls](https://github.com/lighttiger2505/sqls) provides the LSP server implementation for the SQL layer.

Install the [latest sqls release](https://github.com/lighttiger2505/sqls/releases) for the Operating System in use.

> Linux install: download the Linux release, extract the archive and move the `sqls` binary file to `~/.local/bin`

 `sqls -help` or `sqls -version` in a terminal confirms the binary is working.


## Adding database connections via LSP

`sql-lsp-sqls-workspace-config-path` as an SQL layer variable defines the location of database connections in JSON format

```
(sql :variables
     sql-lsp-sqls-workspace-config-path 'workspace)
```

* `workspace`: Emacs workspace directory, XDG location `~/.config/emacs/workspace/` or `~/emacs.d/workspace/`
* `root`: top level of current project


### Database configuration for SQL LSP

Example database connection in JSON.

```json
{
  "sqls": {
    "connections": [
      {
        "driver": "mysql",
        "dataSourceName": "user1:password1@tcp(localhost:3306)/sample_db"
      }
    ]
  }
}
```

With `sql-lsp-sqls-workspace-config-path` set as `workspace` the configuration should be saved to the Emacs workspace directory, e.g. `~/.config/emacs/workspace/practicalli-database-connections.json`

> #### WARNING::Avoid saving plain-text passwords in projects
> Saving plain-text passwords in configuration files is a security risk. Passwords should definitely not be checked into a code sharing service (GitLab, GitHub, etc).
>
> Using the `workspace` option minimises the risk of adding passwords to a shared code service as it is not part of any source code projects, although it still presents some risk if security of the Operating System is breached.


---


> #### Hint::Add database connections securely via Elisp
> Connections can be defined in Elisp and added to the `dotspacemacs/user-config` section of the Spamcemacs configuration file, optionally using a PGP encrypted password for greater security.

<!-- TODO: add link to pages to define database connections using elisp -->
