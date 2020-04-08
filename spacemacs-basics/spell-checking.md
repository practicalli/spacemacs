# Spell checking in Spacemacs
The `spell-checking` layer provides 'on-the-fly' spell checking, highlighting incorrect spelling of words as you type.

`SPC S` is the spell check menu.

![Spacemacs Spelling menu](/images/spacemacs-spelling-menu.png)


## Spell check the current word
`SPC S s RET` is a quick way to fix the spelling of the current word as most of the time the correct spelling is at the top of the list.

`SPC S s` checks the current word under the cursor.  A list of possible spellings displays in a popup.  Use `C-j`/`C-k` to navigate the spellings and `RET` to select the spelling to use.


## Requrements
Add the `spell-checking` layer to the layer list in `~/.spacemacs`.

The `spell-checking` layer uses the [flyspell tool](https://github.com/emacs-mirror/emacs/blob/master/lisp/textmodes/flyspell.el) in Emacs and an external binary

Install an external spell checking binaries that is supported by flyspell: ispell, hunspell, aspell.  On Unix systems this binary is probably installed already.
