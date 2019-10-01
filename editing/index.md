# Editing tools

Spacemacs has many tools you can use to boost editing of code and documentation.

| Tools             | Description                                                                                                             |
|-------------------|-------------------------------------------------------------------------------------------------------------------------|
| Vim modal editing | [Vim Basics](/spacemacs-basics/vim-basics.html)                                                                         |
| Visual select state | Techiques on selecting text                                                                                             |
| Vim Normal state | [Vim Basics](/spacemacs-basics/speaking-vim.html) and [Vim Quick Reference](/spacemacs-basics/vim-quick-reference.html) |
| iedit state       | Concurrent find and replace of a search text in a buffer                                                     |
| Narrowing         | [Selective editing of a buffer](/editing/evil-tools/narrowing.html) (region, function)                                  |
| Multiple cursors  | Using multiple editors to change multiple lines at once                                                                 |
| Evil tools        | Using iedit / narrowing / helm for managing multiple changes across the project                                         |


> #### Hint::Refactor code tools
> The [Refactor section](/refactor/) has further editing techniques and Clojure specific refactoring tools.


## Evil editing states

![Spacemacs States](/images/spacemacs-states-vim.png)

Evil normal is the default state and where you should spend most of your time.

`,` menu contains the major mode (e.g. Clojure) specific commands, organised mnemonically

`v` opens the visual state and allows you to selects text

`i`, `a`, `o`, `O` opens insert state and allows you to create type text

`SPC s e` opens iedit and selects all matching instances of the highlighted text for editing

`SPC k` opens Lisp state, allowing you to do [structured editing](structured-editing/)
