# Alternative Tooling

Alternative tooling that can be used with Spacemacs but it not the main focus of this guide.

* [Joker for linting](joker.md)
* Parinfer for structural editing
* Leiningen
* External Clojure REPL




## Structural Editing Alternatives

[Paredit](https://www.emacswiki.org/emacs/ParEdit) was the original structural editing mode just for lisps, however, it is not actively maintained.  The Clojure layer in Spacemacs actually includes paredit, however no keybindings are defined, so you either have to use commands via `SPC SPC` or add your own keybindings to `dotspacemacs/user-config`, preferably using hooks on the Clojure mode.

[Parinfer](https://shaunlebron.github.io/parinfer/) is relatively new and self describes as a bit of an experiment.  It does provide a bit more indentation automation which for some is great and for others quite confusing or annoying.  Smartparens and Clojure mode formatting does everything that Parinfer does, its just parinfer works a little differently and needs some configuration.
