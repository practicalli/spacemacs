# Spacemacs Comments

Spacemacs uses the same keybindings and commands to comment any programming language or mode.  The character and style of comments is defined in each layer or package that layer includes.

| Keybinding                | Action                                                   |
|---------------------------|----------------------------------------------------------|
| `SPC ; ;`                 | Toggle comment current line                              |
| `g c c`                   | Toggle comment current line                              |
| `g c a p`                 | Toggle comment selected paragraphs                       |
| `g c SPC y`               | Comment up to a line with avy                            |
| `g y`                     | Paste a commented copy of the current line above         |
| `v` _select region_ `g c` | Enter visual mode, select a region and comment           |
| `M-;`  (any state)         | Create a new comment line, or add comment to end of line |

> ####Info::Evil-commentary layer
> Spacemacs uses the [evil-commentary layer](https://github.com/syl20bnr/spacemacs/tree/master/layers/%2Bvim/evil-commentary) to provide a commenting tool for all other layers.

## `#_` - Reader Macro comment

`#_` will comment out an expression and is completely ignored by Clojure, so the expression is never evaluated and therefore no value is returned.  It can therefor be used to comment out expressions withing expressions.

```clojure
#_(str "Reader macro comment "
     #__"covers the whole expression "
     "over multiple lines")
```

`#_` can also be used with threading macro. In this example a book is transformed by functions that can be individually commented out to see how each function affects the result.

```clojure
(->> book
     #_(re-seq #"[a-zA-Z0-9|']+")
     #_frequencies
     #_(sort-by val)
     #_reverse)
```

> #### Hint::Evaluating commented expressions
> `, e e` or `, e f` will still evaluate an expression commented with the reader macro comment in the source code buffer.

---

> #### TODO::A function / keybinding for toggling the reader macro comment
> A function that adds a reader macro was added to my .spacemacs configuration, along with a keybinding.


## `comment` function

The `comment` function prevents the expressions it surrounds from being evaluated, however, as `comment` is a function it is evaluated itself and returns a `nil` value.

So `comment` is useful for commenting out one or more complete expressions

```clojure
(comment
   (println "I dont run if buffer is evaluated")
   (println "I can be one of many functions commented out"))
```

However, using `comment` within an expression can cause unexpected results as it returns `nil`


## Creating sections for comments

Code is typically divided into sections using a line of comment characters. Rather than type or copy/paste a line of comments you can use Spacemacs repeat command.

`42 i ; ESC` will create a line of 42 `;` characters.

Hold down the control key and press the relevant number key, then release both and press the character you wish to repeat.

If you want more than a single digit value, then hold the control key and press the first number, then release both keys and press the remaining numbers followed by the character to repeat.


## Classic Emacs comments

With Spacemacs you can add comments to Clojure or any type of language using the keybinding `M-;`.  This will add a comment to the end of the existing line using the default comment character(s) for the current language (Emacs major mode).

To comment out an existing code, simply select the line(s) of text you wish to comment out, `C-SPC`, then hit `M-;`

As `M-;` toggles comments, to un-comment code then simply select the commented line(s) of code to change and hit `M-;`


#### Creating sections for comments

If you want to divide up your code into sections using comments, rather than type or copy/paste a line of comments you can use Spacemacs character repeat command (is that the real name?)

Hold down the control key and press the relevant number key, then release both and press the character you wish to repeat.

If you want more than a single digit value, then hold the control key and press the first number, then release both keys and press the remaining numbers followed by the character to repeat.

* `C-7 ;`  - ;;;;;;;
* `C-24 ;` - ;;;;;;;;;;;;;;;;;;;;;;;;
* `C-42 ;` - ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

> Use `C-g` if you want to cancel at any time before hitting the character to be repeated
