# Structured Editing

Structural Editing is a way to navigate and refactor your code without breaking parenthesis or other characters that define the structure of your code: `() [] {} ""`.

You can quickly jump between the start and end of expressions.  It is easy to move expressions around, pull code into expressions or push code out of expressions too.

> ####TODO::Add video of structural editing in practice
> Watch [Parens of the Dead](http://www.parens-of-the-dead.com/) to see live coding with structural editing

## Smartparens - writing structured text

Spacemacs uses [smart parens](https://github.com/Fuco1/smartparens) to help you write structured code really fast and also move expressions around.

`SPC SPC sp-cheet-sheet`  lists all the smartparens commands available and we will cover the most common commands in this section.

> ####Hint::Smartparens is not just for lisps
> Smartparens is the default package that supports all languages in Spacemacs.  So as well as all lisp languages, it also support closing & matching for things like tags in HTML.
> Smart parens is a newer implementation of the classic _paredit_ package.

## Lisp mode - manipulating structured text

Spacemacs includes an Evil **lisp-state**, `SPC k .` for refactoring Lisp base languages like Clojure.  In this **lisp-state** you can use single character commands to move symbols and expressions around without risking unmatched parenthesis or other structure characters.

The **lisp-state** uses smartparens commands, so its a great way to learn structural editing.

The common commands I use are

| Lisp state `SPC k` | Description                                                          |
|--------------------|----------------------------------------------------------------------|
| `s` /  `S`         | slurp forwards / backwards - pull in code from the right / left      |
| `b` / `B`          | barf forwards / backwards - push out code to the right / left        |
| `d x`              | delete expression                                                    |
| `r`                | raise expression - replace parent expression with current expression |


[![Spacemacs - Lisp State for Structural Editing](/images/spacemacs-structural-editing-lisp-state-menu.png)](/images/spacemacs-structural-editing-lisp-state-menu.png)


## Alternatives: paredit and parinfer

[Paredit](https://www.emacswiki.org/emacs/ParEdit) was the original structural editing mode just for lisps, however, it is not actively maintained.  The Clojure layer in Spacemacs actually includes paredit, however no keybindings are defined, so you either have to use commands via `SPC SPC` or add your own keybindings to `dotspacemacs/user-config`, preferably using hooks on the Clojure mode.

[Parinfer](https://shaunlebron.github.io/parinfer/) is relatively new and self describes as a bit of an experiment.  It does provide a bit more indentation automation which for some is great and for others quite confusing or annoying.  Smartparens and Clojure mode formatting does everything that Parinfer does, its just parinfer works a little differently and needs some configuration.



## Enable Vim support for Structural editing

Safe Structural editing in Vim normal state respects structural editing too, meaning the standard vim commands can be used for cutting and deleting text without breaking Clojure or Lisp code structures.

Safe structural editing is provided by the package [evil-cleverparens](https://github.com/luxbock/evil-cleverparens) which is included in the Clojure layer. By default this mode is not activated.

| Spacemacs   | Vim     | Description                                                |
|-------------|---------|------------------------------------------------------------|
| `SPC m T s` | `, T s` | Enable evil safe structural editing for the current buffer |

When enabled the symbol =🆂= is displayed in the mode-line.

![Spacemacs - Clojure - Safe Structural Editing mode enabled](/images/spacemacs-clojure-safe-structural-editing-mode.png)

Enable for all =clojure= buffers by adding the following function in =dotspacemacs/user-config=

```
(spacemacs/toggle-evil-safe-lisp-structural-editing-on-register-hook-clojure-mode)
```

 To enable evil safe structural editing for all supported modes:

```
(spacemacs/toggle-evil-safe-lisp-structural-editing-on-register-hooks)
```

By adding [clever-smartparens]() or [evil-smartparens](https://github.com/expez/evil-smartparens) then Vim Normal state editing



>####TODO::Move Vim alternatives to own section
Although it is not structural editing, in Vim mode you can delete to a particular character.  So if you wish to delete a form ending in `)` then vim allows you to delete to `)`.

1. Enter **normal** mode
2. Move to the starting point of the text you wish to delete
3. Delete everything up to, but not including the closing parenthesis - `d t )`
