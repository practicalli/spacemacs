# Changing font

You can change the font to any currently installed on your computer.  The default font is [Source Code Pro](https://adobe-fonts.github.io/source-code-pro/).

I set the default font to Ubuntu Mono from the freely available [Ubuntu Font Family](http://font.ubuntu.com/).

```lisp
   dotspacemacs-default-font '("Ubuntu Mono"
                               :size 16
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
```

If the powerline graphics looks 

## Changing Font Size

Changing font size can be useful for demos and presentation or other times you share your screen.

The font size of the current buffer can be increased or decreased using the keybinding `C-c C-+` and `C-c C--`.

As a convenience I suggest adding two shorter key bindings to increase & decrease the font size in the current buffer.

Edit the `~/.spacemacs` file and add the following key bindings to the `dotspacemacs/config` function

```lisp
  (define-key global-map (kbd "C-+") 'text-scale-increase)
  (define-key global-map (kbd "C--") 'text-scale-decrease)
```

> Adjusting the font size of a buffer is not permanent and only applies to the currently highlighted buffer.
