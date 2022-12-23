# Navigate names or symbols

`#` or `*` enters **symbol highlight transient state** allowing you to jump between the current symbol name and any other instance in the buffer.

[![Spacemacs Vim Normal - Symbol highlight transient state](/spacemacs/images/spacemacs-vim-normal-symbol-highlight-transient-state.png)](/spacemacs/images/spacemacs-vim-normal-symbol-highlight-transient-state.png)

`e` to start iedit state and edit all the symbols concurrently.  This is so amazing.

`/` will show a helm popup with all the instances of the symbol through out the project files, a quick way to search a project.


`f` will show a helm popup with all the instances of the symbol in a specified file.

`b` will show a helm popup with all the instances of the symbol through out all open buffers (global buffers, so even those in a different layer).

`s` search a buffer and navigate to each location in code with the matching symbol by scrolling though the results.

`SPC s c` clears symbol highlighting and search pattern highlighting.

## [Helm-swoop](https://develop.spacemacs.org/layers/+completion/helm/README.html#helm-swoop){target=_blank}

Search a buffer (Clojure namespace) or project and use the results to navigate to the locations in the code for each match found.

| Keybindings | Description                  |
|-------------|------------------------------|
| `SPC s C`   | clear helm-swoop own cache   |
| `SPC s s`   | execute helm-swoop           |
| `SPC s S`   | execute helm-multi-swoop     |
| `SPC s C-s` | execute helm-multi-swoop-all |
| `SPC s p`   | search project               |

For example, navigate to a function definition and all the places that function is called in a project using helm-multi-swoop.

![Helm multi-swoop](https://raw.githubusercontent.com/ShingoFukuyama/spacemacs/images/master/helm-multi-swoop.gif)

!!! HINT "Refactor code"
    [Refactor section](/refactor/) provides examples of using helm-ag, helm-swoop, iedit, narrowing and clj-refactor.
