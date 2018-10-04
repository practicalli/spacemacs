# Spacemacs Vim

> ####TODO::Work in progress
> Adding neat things Spacemacs adds to the vim experience here, as I learn them.  Here are a few powerful menus for vim normal state.


## The power of g

`g` in Vim normal mode brings up a menu of neat shortcuts


[![Spacemacs Vim Normal - g menu](/images/spacemacs-vim-normal-g-menu.png)](/images/spacemacs-vim-normal-g-menu.png)

I mainly use this for changing the case of letters, e.g.:

`v` to select the characters I want to change
`g` for the menu
`u` or `U` to change to lower or upper case





## `#` or `*` to navigate by words / symbols

`#` or `*` enters **symbol highlight transient state** allowing you to jump between the current symbol name and any other instance in the buffer.


[![Spacemacs Vim Normal - Symbol highlight transient state](/images/spacemacs-vim-normal-symbol-highlight-transient-state.png)](/images/spacemacs-vim-normal-symbol-highlight-transient-state.png)


`e` to start iedit state and edit all the symbols concurrently.  This is so amazing.


`/` will show a helm popup with all the instances of the symbol through out the project files, a quick way to search a project.


`f` will show a helm popup with all the instances of the symbol in a specified file.

`b` will show a helm popup with all the instances of the symbol through out all open buffers (global buffers, so even those in a different layer).


## `z` for Code Folding etc.

Code folding is a handy way to hide parts of you code and comments you are not currently interested in.

`z` opens a menu to allow you to un/fold your code quickly.


[![Spacemacs Zoom menu](/images/spacemacs-vim-normal-z-menu.png)](/images/spacemacs-vim-normal-z-menu.png)

`SPC z .` is the code fold transient menu should you wish to un/fold code many times.

See the [code folding](/navigating-code/code-folding.html) section for more details.
