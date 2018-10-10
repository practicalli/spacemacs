# Spacemacs Comments

Spacemacs uses the same keybindings and commands to comment any programming language or mode.  The character and style of comments is defined in each layer or package that layer includes.

| Keybinding          | Action                                           |
|---------------------|--------------------------------------------------|
| `SPC ; ;`           | Toggle comment current line                      |
| `g c c`             | Toggle comment current line                      |
| `g c a p`           | Toggle comment selected paragraphs               |
| `g c SPC y`         | Comment up to a line with avy                    |
| `g y`               | Paste a commented copy of the current line above |
| `v` _select region_ `g c` | Enter visual mode, select a region and comment   |


## Creating sections for comments

Code is typically divided into sections using a line of comment characters. Rather than type or copy/paste a line of comments you can use Spacemacs repeat command.

Hold down the control key and press the relevant number key, then release both and press the character you wish to repeat.

If you want more than a single digit value, then hold the control key and press the first number, then release both keys and press the remaining numbers followed by the character to repeat.




> ####Info::Evil-commentary layer
> Spacemacs uses the [evil-commentary layer](https://github.com/syl20bnr/spacemacs/tree/master/layers/%2Bvim/evil-commentary) to provide a commenting tool for all other layers.

## Classic Emacs comments

With Spacemacs you can add comments to Clojure or any type of language using the keybinding `M-;`.  This will add a comment to the end of the existing line using the default comment character(s) for the current language (Emacs major mode).

To comment out an existing code, simply select the line(s) of text you wish to comment out, `C-SPC`, then hit `M-;`

As `M-;` toggles comments, to un-comment code then simply select the commented line(s) of code to change and hit `M-;`


## Creating sections for comments

If you want to divide up your code into sections using comments, rather than type or copy/paste a line of comments you can use Spacemacs character repeat command (is that the real name?)

Hold down the control key and press the relevant number key, then release both and press the character you wish to repeat.

If you want more than a single digit value, then hold the control key and press the first number, then release both keys and press the remaining numbers followed by the character to repeat.

### Examples

* `C-7 ;`  - ;;;;;;;
* `C-24 ;` - ;;;;;;;;;;;;;;;;;;;;;;;;
* `C-42 ;` - ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

> Use `C-g` if you want to cancel at any time before hitting the character to be repeated


## `#_` - Reader Macro comment

> TODO: A function / keybinding for toggling the reader macro comment
> A function that adds a reader macro was added to my .spacemacs configuration, along with a keybinding.
