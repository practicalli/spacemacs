# Transient State menus

Transient state menus make it simple to run commands multiple times, using a single key press, from a specific sub-set of commands.

For example, Font Scaling transient state menu allows you to repeatedly increase the size of the buffer font just by using the `+` key.  The Font Scaling transient state menu contains the sub-set of commands related to scaling, so you can decrease the font size just with the `-` key and reset the font with `0`.

[![Transient State - scaling text](https://github.com/syl20bnr/spacemacs/raw/master/doc/img/spacemacs-scale-transient-state.png)](https://github.com/syl20bnr/spacemacs/raw/master/doc/img/spacemacs-scale-transient-state.png)

Transient-states are usually triggered by using a keybinding with the following pattern: `<Leader> <group> .` where group is the category the transient-state falls under.

When in a transient-state you will see documentation at the bottom of your window. To exit a transient-state press q.

  Examples of transient state menus

* `SPC b .` - buffer management
* `SPC e .` - errors
* `SPC k .` - lisp state
* `SPC w .` - window management
* `SPC z .` - code folding
* `SPC z f` - zoom frame size
* `SPC z x` - Font Scaling (x for text)

## Hydra menus

Spacemacs uses [hydra]() to create these transient states. Some packages also include their own Hydra menus. An example of this is the Clojure refactor hyrda menu.

* `C-c C-f h h` - clj-refactor (hydra menu)


> ####TODO::Propose transient state keybinding for Clojure layer - cljr-refactor
> hydra-cljr-help-menu/body is an interactive compiled Lisp function in `clj-refactor.el'.
```
(hydra-cljr-help-menu/body)
```
>
>For more information check the manuals.
>
>Call the body in the "hydra-cljr-help-menu" hydra.
>
> The heads for the associated hydra are:
>
> "n":    ‘hydra-cljr-ns-menu/body’,
> "c":    ‘hydra-cljr-code-menu/body’,
> "p":    ‘hydra-cljr-project-menu/body’,
> "t":    ‘hydra-cljr-toplevel-form-menu/body’,
> "s":    ‘hydra-cljr-cljr-menu/body’,
> "q":    ‘nil’
>
> The body can be accessed via ‘hydra-cljr-help-menu/body’.
```
