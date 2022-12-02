# SQL Layer External dependencies

Linting and formatting of SQL queries is supported via externally installed binaries.

> [SQL layer and LSP page](add-sql-layer-and-lsp.md) documents installation of an LSP Server binary for the SQL layer


## SQLint Linting tool

The sqlint tool provides SQL syntax checking in Emacs via Flycheck.

Install `ruby` and the `sqlint` gem.

```bash
gem install sqlint
```

### Add Git pre-commit hook

When committing queries it is useful to define a Git pre-commit hook to check the syntax of the query before the commit completes

If using [pre-commit](https://pre-commit.com/) to manage hooks, edit the Git `.pre-commit-hooks.yaml`

```yaml
-   repo: https://github.com/purcell/sqlint
    rev: master
    hooks:
    -   id: sqlint
```


## SQLfmt formatting tool

Formatting: Install sqlfmt and move it into your $PATH

 Download and extract the binary 0.4.0 for linux
wget -q -O - https://github.com/mjibson/sqlfmt/releases/latest/download/sqlfmt_0.4.0_linux_amd64.tar.gz | tar -xpvzf - --directory "${installdir}/bin"
