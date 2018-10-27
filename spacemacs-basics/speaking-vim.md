# Learning Vim by Speaking Vim

Vim can be easier to learn if you learn to speak commands as sentences.

First learn some verbs:

 `c` (change), `d` (delete), `s` surround, `v` (visual select), `y` (yank/copy)

Then learn some modifiers

`a` (around), `i` (inside), `SPC j` (jump to next character), `t` (till..just before a character), `f` (find..the next character), `/` (search..find a string/regex)

Then learn text objects

`w` (word), `s` (sentence) `p` (paragraph) `b` (block/parentheses), `t` (tag - html/xml)


## Examples of speaking vim

Practice speaking vim with these examples

| Keybinding  | Description                                                           |
|-------------|-----------------------------------------------------------------------|
| `g c c`     | go comment current (line)                                             |
| `v a p`     | visually select around current paragraph                              |
| `c t X`     | change till the character X                                           |
| `c /foo`    | change until the first search result of ‘foo’                         |
| `c i "`     | change inside double quotes                                           |
| `c i s`     | change inside current sentence                                        |
| `d i w`     | delete inside the current word                                        |
| `v t SPC`   | visual select till the next `Space` character                         |
| `v s ]`     | visually select and surround with `[]` without spaces                 |
| `SPC v s "` | visually select current work and surround with `""`                   |
| `g v`       | go to last visual selection                                           |
| `cs’”`      | change by the surrounding single quote using double quote             |
| `viws”`     | visually select, insert around current word, and surround with quotes |


> #### Hint:: Vim Reference and Tips
> [Vim quick reference guide](vim-quick-reference.html)
> [Vim tips for developers](vim-tips-for-developers.html)
