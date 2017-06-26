# Changing & Zooming Buffer Fonts

You can change the font to any currently installed on your computer.  The default font is [Source Code Pro](https://adobe-fonts.github.io/source-code-pro/).

I set the default font to Ubuntu Mono from the freely available [Ubuntu Font Family](http://font.ubuntu.com/).

```lisp
   dotspacemacs-default-font '("Ubuntu Mono"
                               :size 20
                               :weight normal
                               :width normal
                               :powerline-scale 1.2)
```

> **Hint** If the powerline graphics looks a little corrupted, then adjust the `:powerline-scale` value by `.1` either way until it looks correct.


## Zooming Font Size of a buffer

Changing font size of your buffer can be useful for demos and presentation or other times you share your screen.

Use the Spacemacs Zoom menu to enter a transient state that will let you zoom text in and out or return the text size 


| Spacemacs | Emacs     | Description                  |
|-----------|-----------|------------------------------|
| `SPC z x` | `M-m z x` | Toggle line numbers          |


[![Spacemacs - Zoom Text Transient State - Font Scalling](../images/spacemacs-zoom-text-transient-state-font-scaling.png)](../images/spacemacs-zoom-text-transient-state-font-scaling.png)

> **Hint** Adjusting the font size of a buffer is not permanent and only applies to the currently highlighted buffer.  If the font size is often too big or to small, then adjust the default font size as shown above.


## Classic Emacs custom keys

> I do not recommend the following, but if like me you are still hooked on Ctrl plus and minus to zoom text, this is how you do it in Spacemacs.

The font size of the current buffer can be increased or decreased using the Emacs keybinding `C-c C-+` and `C-c C--`.

As a convenience I add two shorter key bindings to increase & decrease the font size in the current buffer.

Edit the `~/.spacemacs` file and add the following key bindings to the `dotspacemacs/user-config` function

```lisp
  (define-key global-map (kbd "C-+") 'text-scale-increase)
  (define-key global-map (kbd "C--") 'text-scale-decrease)
```


