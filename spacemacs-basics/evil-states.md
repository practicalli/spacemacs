# Evil editing states

![Spacemacs States](/images/spacemacs-states-vim.png)

Evil normal is the default state and where you should spend most of your time.

`,` menu contains the major mode (e.g. Clojure) specific commands, organised mnemonically

`v` opens the visual state and allows you to selects text

`i`, `a`, `o`, `O` opens insert state and allows you to create type text

`SPC s e` opens iedit and selects all matching instances of the highlighted text for editing

`SPC k` opens Lisp state, allowing you to do [structural editing](structural-editing/)


> #### Hint::Refactor code tools
> The [Refactor section](/refactor/) has further editing techniques and Clojure specific refactoring tools.
