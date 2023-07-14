# Structural Editing

Structural Editing is a way to navigate and refactor your code without breaking parenthesis or other characters that define the structure of your code: `() [] {} ""`.

You can quickly jump between the start and end of expressions.  It is easy to move expressions around, pull code into expressions or push code out of expressions too.

<!--
TODO::Add video of structural editing in practice
> Watch [Parens of the Dead](http://www.parens-of-the-dead.com/) to see live coding with structural editing
-->

## Smartparens - writing structural text

Spacemacs uses [smart parens](https://github.com/Fuco1/smartparens) to help you write structural code really fast and also move expressions around.

++spc++ ++spc++ `sp-cheat-sheet`  lists all the smartparens commands available and we will cover the most common commands in this section.

!!! HINT "Smartparens is not just for lisps"
    Smartparens supports structural editing for all languages in Spacemacs, event closing & matching for markup languages such as tags in HTML.  Smartparens is a newer implementation of the classic _paredit_ package.


## Lisp mode - manipulating structural text

Spacemacs includes an Evil **lisp-state**, `SPC k .` for refactoring Lisp base languages like Clojure.  In this **lisp-state** you can use single character commands to move symbols and expressions around without risking unmatched parenthesis or other structure characters.

The **lisp-state** uses smartparens commands, so its a great way to learn structural editing.

The common commands I use are

| Lisp state `SPC k` | Description                                                          |
|--------------------|----------------------------------------------------------------------|
| `s` /  `S`         | slurp forwards / backwards - pull in code from the right / left      |
| `b` / `B`          | barf forwards / backwards - push out code to the right / left        |
| `d x`              | delete expression                                                    |
| `r`                | raise expression - replace parent expression with current expression |


![Spacemacs - Lisp State for Structural Editing](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-structural-editing-lisp-state-menu.png)


## Enable Vim support for Structural editing

++comma++ ++t++ ++"s"++ toggles evil safe structural editing in all languages that support using [evil-cleverparens](https://github.com/emacs-evil/evil-cleverparens){target=_blank}.  This package is included in the Clojure layer, but by default this mode is not activated.

Safe Structural editing in Vim normal state respects structural editing, meaning the standard vim commands can be used for cutting and deleting text without breaking Clojure or Lisp code structures.
`🆂` symbol is displayed in the mode-line when evil safe structural editing is enabled.

![Spacemacs - Clojure - Safe Structural Editing mode enabled](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-clojure-safe-structural-editing-mode.png)

Enable for all clojure buffers by adding the following function in `dotspacemacs/user-config`

```emacs
(spacemacs/toggle-evil-safe-lisp-structural-editing-on-register-hook-clojure-mode)
```

 To enable evil safe structural editing for all supported modes:

```emacs
(spacemacs/toggle-evil-safe-lisp-structural-editing-on-register-hooks)
```

!!! HINT "Evil Cleverparents for Evil state"
     ensures Vim Normal commands respect the structure of the language, i.e. will not delete parents that contain code.
