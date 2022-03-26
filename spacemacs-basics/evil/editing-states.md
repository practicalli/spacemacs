# Evil editing states

![Spacemacs States](/images/spacemacs-states-vim.png)

Each states allows keys to have different behaviour, helping minimise the cognitive load and quickly building muscle memory for very powerful actions.

| Evil state | Description                                                              |
|------------|--------------------------------------------------------------------------|
| **normal** | manipulating and navigating existing text (default state)                |
| **insert** | writing new text                                                         |
| **visual** | selecting regions of text                                                |
| **iedit**  | edit multiple regions simultaneously                                     |
| **lisp**   | structural editing for Clojure & Lisp style languages (e.g. slurp, barf) |

First get familiar with **normal**, **insert** and **visual** states.  Then when you are comfortable, move on to **iedit** and **lisp** states.

> #### Hint::Normal state by default
> Evil normal state should be used most of the time, unless you are writing code or creating lots of text.


## Important key bindings

`,` menu contains the major mode (e.g. Clojure) specific commands, organised mnemonically

`v` opens the visual state and allows you to selects text

`i`, `a`, `o`, `O` opens insert state and allows you to create type text

`SPC s e` opens iedit and selects all matching instances of the highlighted text for editing

`SPC k` opens Lisp state, allowing you to do [structural editing](structural-editing/)


> #### Hint::Refactor code tools
> The [Refactor section](/refactor/) has further editing techniques and Clojure specific refactoring tools.
