# Editing with Vim and iedit

 Using [iedit](https://github.com/victorhge/iedit) you can edit multiple, identical string occurrences at the same time.

{% youtube %}
https://youtu.be/VCxJy8abkfA
{% endyoutube %}

`SPC s e` to use [`evil-iedit-state`](https://github.com/syl20bnr/evil-iedit-state) to quickly edit multiple occurrences of a symbol or selection.

## iedit states key bindings

| Key Binding | From             | To     |
|-------------|------------------|--------|
| `SPC s e`   | normal or visual | iedit  |
| `e`         | expand-region    | iedit  |
| `ESC`       | iedit            | normal |
| `C-g`       | iedit            | normal |
| `fd`        | iedit            | normal |
| `ESC`       | iedit-insert     | iedit  |
| `C-g`       | iedit-insert     | normal |
| `fd`        | iedit-insert     | normal |

iedit also integrates with [`expand-region`](https://github.com/magnars/expand-region.el) for quick editing of the currently selected text by pressing `e`.


> #### Note::Switching edit states
> Evil commands which switch to `insert state` will switch in `iedit-insert state`.

## In iedit state
`iedit state` inherits from `normal state`, the following key bindings are specific to `iedit state`.

| Key Binding | Description                                                                         |
|-------------|-------------------------------------------------------------------------------------|
| `ESC`       | go back to normal state                                                             |
| `TAB`       | toggle current occurrence                                                           |
| `0`         | go to the beginning of the current occurrence                                       |
| `$`         | go to the end of the current occurrence                                             |
| `#`         | prefix all occurrences with an increasing number (SPC u to choose starting number). |
| `A`         | go to the end of the current occurrence and switch to iedit-insert state            |
| `D`         | delete the occurrences                                                              |
| `F`         | restrict the scope to the function                                                  |
| `gg`        | go to first occurrence                                                              |
| `G`         | go to last occurrence                                                               |
| `I`         | go to the beginning of the current occurrence and switch to iedit-insert state      |
| `J`         | increase the editing scope by one line below                                        |
| `K`         | increase the editing scope by one line above                                        |
| `L`         | restrict the scope to the current line                                              |
| `n`         | go to next occurrence                                                               |
| `N`         | go to previous occurrence                                                           |
| `p`         | replace occurrences with last yanked (copied) text                                  |
| `S`         | (substitute) delete the occurrences and switch to iedit-insert state                |
| `V`         | toggle visibility of lines with no occurrence                                       |
| `U`         | Up-case the occurrences                                                             |
| `C-U`       | down-case the occurrences                                                           |

> #### Hint::
> `0`, `$`, `A` and `I` have the default Vim behavior when used outside of an `occurrence`.

## In iedit-insert state

| Key Binding | Description               |
|-------------|---------------------------|
| `ESC`       | go back to iedit state  |
| `C-g`       | go back to normal state |
