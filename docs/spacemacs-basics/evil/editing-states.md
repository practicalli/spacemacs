# Evil editing states

![Spacemacs - Evil states](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/concepts/spacemacs-states-evil.png?raw=true)

Each states allows keys to have different behaviour, helping minimise the cognitive load and quickly building muscle memory for very powerful actions.

| Evil state | Description                                                              |
|------------|--------------------------------------------------------------------------|
| **normal** | manipulating and navigating existing text (default state)                |
| **insert** | writing new text                                                         |
| **visual** | selecting regions of text                                                |
| **iedit**  | edit multiple regions simultaneously                                     |
| **lisp**   | structural editing for Clojure & Lisp style languages (e.g. slurp, barf) |

First get familiar with **normal**, **insert** and **visual** states.  Then when you are comfortable, move on to **iedit** and **lisp** states.

!!! TIP "Normal state by default"
    Evil normal state should be used most of the time, unless you are writing code or creating lots of text.


## Important key bindings

++"v"++ opens the visual state and allows you to selects text

++"i"++, ++"I"++, ++"a"++, ++"A"++, ++"o"++ , ++"O"++ all open insert state and allows you to type new text

++esc++ or ++"f"++ ++"d"++ returns to Normal mode for text manipulation and leader / local leader commands

++coma++ menu contains the major mode (e.g. Clojure) specific commands, organised mnemonically

++spc++ ++"s"++ ++"e"++ opens iedit and selects all matching instances of the highlighted text for editing

++spc++ ++"k"++ opens Lisp state, allowing you to do [:fontawesome-solid-book-open: structural editing](/spacemacs/structural-editing/)


!!! TIP "Refactor code tools"
    The [:fontawesome-solid-book-open: Refactor section](/spacemacs/refactor/) has further editing techniques and Clojure specific refactoring tools.
