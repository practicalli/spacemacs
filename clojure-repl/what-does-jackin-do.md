# What does 'cider-jack-in' do

When you ask Emacs to start a new REPL using `cider-jack-in` it actually sends this request to Leiningen, the Clojure build automation tool.  Once Leiningen has started the REPL, then a connection is made to that REPL from Emacs using the nREPL protocol.

This feature is from the CIDER package for Emacs, a Leiningen plugin called `cider-nrepl` and the Clojure `tools.nrepl` library are required.


## Cider configuration (version 0.10 and earlier)

In earlier versions of CIDER (<= 0.10) the following configuration had to be added to your `~/.lein/profiles.clj` file and updated when there were new versions of `cider-nrepl` and `tools.nrepl`.  The versions of each library also had to be kept in sync.

```clojure
{:user {:plugins      [[cider/cider-nrepl "0.11.0-SNAPSHOT"]
                       [refactor-nrepl "2.0.0-SNAPSHOT"]]
        :dependencies [[alembic "0.3.2"]
                       [org.clojure/tools.nrepl "0.2.12"]]}}
```

From version 0.11 of CIDER, these dependencies are automatically injected when you run a command to start a REPL.  The versions of `cider-nrepl` and `tools-nrepl` are maintained in the Clojure layer configuration.
