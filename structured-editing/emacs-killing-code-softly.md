## Emacs state: Killing code softly 

When in Emacs state (or if you only use holy mode), using `C-k` allows to delete (put on the kill ring) a section of code without messing up the structure of your code.

So if you are in a string, you can delete the contents of a string without accidentally deleting the double quotes.  The same applies to a list, map or any other structure.

<p align="center">
<iframe width="560" height="315" src="https://www.youtube.com/embed/HuufiBXXz14" frameborder="0" allowfullscreen></iframe>
</p>

> **HINT** Emacs state is denoted by a light blue background colour for the current window number and the colour of the cursor.

| Emacs   | Command       | Description                              |
|---------|---------------|------------------------------------------|
| C-M-n   | forward-list  | Move forward  over a parenthetical group |
| C-M-p   | backward-list | Move backward over a parenthetical group |
| C-M-k   | kill-sexp     | Kill balanced expression forward         |
| C-M-SPC | mark-sexp     | Put the mark at the end of the sexp.     |

> **FIXME** test these commands are active in Spacemacs 

