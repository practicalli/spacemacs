# Common Tasks using Evil vim-style editing


## Copy Cut Paste

Copy, cut and paste commands use the Emacs kill-ring, which maintains a complete history of values cut or copied since Emacs was started.


### Copy - yank

Copy is known as yank in Emacs terminology.

`y` to yank the currently selected text into the kill-ring, typicaly used with visual select and [motions](./motions.md)

`y y` to yank the current line

> Cut commands followed by `u` to undo are effectively the same as using copy


### Cut

`d`


### Paste

`p` to paste the contents of the kill-ring

`C-j` and `C-k` scroll through the kill-ring history, allowing previously cut and copied values to be selected

> `p` copies any selected text into the kill-ring and will be pasted the next time `p` is pressed

`P` pastes the contents of the kill-ring, without copying selected text.  Use `P` if replacing the same text in several places or consider using [iedit to replace multiple selections]()
