# Formatting Errors for clarity

[io.aviso/pretty](https://github.com/AvisoNovate/pretty) is a library to highlight the most important error lines from a potentially long stack trace.

Pretty error output features

* Readable output for exceptions
* ANSI font and background color support
* Hex dump of binary data <!-- why is this useful -->
* Hex dump of binary deltas <!-- why is this useful -->
* Formatting data into columns

![Pretty print of error messages with iv.aviso/pretty](https://ioavisopretty.readthedocs.io/en/latest/_images/formatted-exception.png)


## In the REPL

`io.aviso.repl` namespace contains functions for use in the REPL, which can copy stack traces from the system clipboard.

`(install-pretty-exceptions)` function overrides several internal Clojure functions to enable formatted exceptions using `io.aviso.exception/write-exception`

`(pretty-print)` parses the content of the clipboard as EDN and prints it in human readable form

`(format-exception)` parse the stack trace and format it for readability

Add the following in a comment block, typically in a `dev/user.clj` file or namespace that is generating a noticeable number of stack traces.

```clojure
(comment
  (require '[io.aviso.repl as pretty])

  (-> (pretty/copy)
      pretty/format-exception
      pretty/paste)
)
```


## On the command line

AvisoNovate/pretty can be used as [a Leiningen plugin for command line use](https://ioavisopretty.readthedocs.io/en/latest/lein-plugin.html)

Add `pretty` as a profile to the project.clj or users .profiles.clj

```bash
lein with-profiles +pretty run
```


TODO: add Clojure CLI alias for running pretty
