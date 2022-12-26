# Editing with Vim and iedit

Make multiple matching edits within a buffer

`SPC s e` to start [`evil-iedit-state`](https://github.com/syl20bnr/evil-iedit-state){target=_blank} to quickly edit multiple occurrences of a symbol within a buffer or selection. Use iedit with helm-ag to [make multiple matching edits across a project](replacing-text-across-projects.md).

`e` within visual state and symbol highlight transient state also enables iedit.

## Common usage

`#` to select all the occurrences of a symbol or word, `e` to start iedit

`n` or `N` to jump between occurrences, `TAB` to deselect or re-select the specific occurrence

<p style="text-align:center">
<iframe width="560" height="315" src="https://www.youtube.com/embed/VCxJy8abkfA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</p>


### Refining text selection

`SPC v` selects a word and `v` expands the selection.

When a name is separated such as with kebab case, `-`, then `SPC v v v v` can select words-separated-by-dashes, with a `v` for each part of the word selection.  The same selection works with file paths and URL's.

Narrowing, `SPC n`, limits the scope of iedit so only the relevant occurrences are changed and reduces the need to deselect unwanted occurrences.

`SPC n f` narrows the scope to a function, `SPC n r` narrows to a pre-selected range.


## iedit state key bindings

`iedit state` changes the behaviour of the following Evil normal state key bindings (every other normal state key binding remains the same)

| Key   | Description                                                                         |
|-------|-------------------------------------------------------------------------------------|
| `ESC` | go back to normal state                                                             |
| `TAB` | toggle selection of current occurrence                                              |
| `0`   | go to the beginning of the current occurrence                                       |
| `$`   | go to the end of the current occurrence                                             |
| `#`   | prefix all occurrences with an increasing number (SPC u to choose starting number). |
| `A`   | go to the end of the current occurrence and switch to iedit-insert state            |
| `D`   | delete the occurrences                                                              |
| `F`   | restrict the scope to the function                                                  |
| `gg`  | go to first occurrence                                                              |
| `G`   | go to last occurrence                                                               |
| `I`   | go to the beginning of the current occurrence and switch to iedit-insert state      |
| `J`   | increase the editing scope by one line below                                        |
| `K`   | increase the editing scope by one line above                                        |
| `L`   | restrict the scope to the current line                                              |
| `n`   | go to next occurrence                                                               |
| `N`   | go to previous occurrence                                                           |
| `p`   | replace occurrences with last yanked (copied) text                                  |
| `S`   | (substitute) delete the occurrences and switch to iedit-insert state                |
| `V`   | toggle visibility of lines with no occurrence                                       |
| `U`   | Up-case the occurrences                                                             |
| `C-U` | down-case the occurrences                                                           |

!!! Hint
> `0`, `$`, `A` and `I` have the default Vim behavior when used outside of an `occurrence`.


## Reference

* [iedit GitHub project](https://github.com/victorhge/iedit){target=_blank}
* [evil-iedit-state](https://github.com/syl20bnr/evil-iedit-state){target=_blank}
