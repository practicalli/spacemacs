# Learning Vim by Speaking Vim

Vim can be easier to understand if you learn to speak commands as sentences.

First learn some verbs:

 `v` (visual), `c` (change), `d` (delete), `y` (yank/copy)

Then learn some modifiers

`i` (inside), `a` (around), `t` (till..just before a character), `f` (find..the next character), `/` (search..find a string/regex)

Then learn text objects

`w` (word), `s` (sentence) `p` (paragraph) `b` (block/parentheses), `t` (tag - html/xml)


## Examples

To move efficiently in vim, avoid pressing keys many times, instead speak to the editor in sentences

| Keybinding | Description                                               |
|------------|-----------------------------------------------------------|
| `g c c`    | go comment current (line)                                 |
| `v a p`    | visually select this paragraph  (visual around paragraph) |
| `c t X`    | change everything from here to the letter X               |
| `c /foo`   | change until next occurrence of ‘foo’                     |
| `c i "`    | change a string inside quotes                             |
| `c i s`    | change current sentence                                   |
| `d i w`    | delete the current word (delete inside word)              |
| `v t SPC`  | visual select to the next Space character                 |
| `g v`      | go to last visual selection                               |



> ####TODO::Some examples to figure out in spacemacs

‘surround’ (s or S)
visually select a word and surround it with quotes: viwS”
change surround from single quote to double quote: cs’”
