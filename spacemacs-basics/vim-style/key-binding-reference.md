# Evil Keybinding Reference

An alphabetically ordered reference of Evil key bindings.

[Spacemacs DOCUMENTATION key bindings section](https://github.com/syl20bnr/spacemacs/blob/develop/doc/DOCUMENTATION.org#key-bindings) contains full details

## Normal mode keybindings

Keybindings available in Evil normal mode and the resultant state they leave you in.

| Keybinding | Description                                      | State   |
|------------|--------------------------------------------------|---------|
| `a`        | append text after cursor                         | Insert  |
| `A`        | append text to end of sentence                   | Insert  |
| `b`        | move cursor back to start of previous word       | Normal  |
| `B`        | move cursor back to start of last word           | Normal  |
| `c`        | change (use with modifier)                       | Insert  |
| `C`        | change rest of sentence                          | Insert  |
| `d`        | delete (use with modifier)                       | Normal  |
| `D`        | delete rest of sentence                          | Normal  |
| `e`        | end of word                                      | Normal  |
| `E`        | end of word  (seems same as above)               | Normal  |
| `f`        | find character forward (type character)          | Normal  |
| `F`        | find character backward (type character)         | Normal  |
| `fd`       | Escape (press almost together)                   | Normal  |
| `g`        | [go menu](/editing/evil-tools/g-menu.md)         | Normal  |
| `G`        | Jump to end of buffer                            | Normal  |
| `h`        | move cursor left                                 | Normal  |
| `H`        | move cursor to top of buffer                     | Normal  |
| `i`        | insert text                                      | Insert  |
| `I`        | insert text at start of sentence                 | Insert  |
| `j`        | Move cursor down a line                          | Normal  |
| `J`        | Join next line to end of current                 | Normal  |
| `k`        | Move cursor up a line                            | Normal  |
| `K`        | `spacemacs/evil-smart-doc-lookup`                | Normal  |
| `l`        | Move cursor right                                | Normal  |
| `L`        | Move cursor to bottom of buffer                  | Normal  |
| `m`        | Create marker (next character is marker name)    | Normal  |
| `M`        | Jump to middle of buffer                         | Normal  |
| `n`        | Next search occurrence                           | Normal  |
| `N`        | Previous search occurrence                       | Normal  |
| `o`        | New line below                                   | Insert  |
| `O`        | New line above                                   | Insert  |
| `p`        | Paste (after / below cursor)                     | Insert  |
| `P`        | Paste (before / above cursor)                    | Insert  |
| `q`        | Start keyboard macro recording                   | Normal  |
| `Q`        | undefined                                        | Normal  |
| `r`        | Replace character under cursor                   | Normal  |
| `R`        | Replace character state                          | Replace |
| `s`        | Substitute character                             | Insert  |
| `S`        | Substitute sentence                              | Insert  |
| `t`        | Find character forward - cursor before character | Normal  |
| `T`        | Find character backward - cursor after character | Normal  |
| `u`        | Undo last change (C-R to redo)                   | Normal  |
| `U`        | Undefined                                        | Normal  |
| `v`        | Visual select                                    | Visual  |
| `V`        | Visual select sentence                           | Visual  |
| `w`        | Jump cursor to start of next word                | Normal  |
| `W`        | Jump cursor to start of next word                | Normal  |
| `x`        | Delete character under cursor                    | Normal  |
| `X`        | Delete character backwards                       | Normal  |
| `y y`      | Yank (copy) line                                 | Normal  |
| `Y`        | Yank (copy) line                                 | Normal  |
| `z`        | Menu - code folding / keyboard macros            |         |
| `Z`        | Menu - evil quit                                 |         |



## `spacemacs/evil-smart-doc-lookup`

Run documentation lookup command specific to the major mode.

Use command bound to `SPC m h h` if defined, otherwise fall back to `evil-lookup`
