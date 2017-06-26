# `M-;` - Toggle Comments 

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

> TODO: is there a function / keybinding for toggling the reader macro comment ?

