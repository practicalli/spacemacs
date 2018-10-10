# Changing Fonts and Zooming

You can change the font to any currently installed on your computer.  The default font is [Source Code Pro](https://adobe-fonts.github.io/source-code-pro/).

Ubuntu Mono is also a great font to use for code.  This font is available in the [Ubuntu Font Family](http://font.ubuntu.com/) and on all Ubuntu operating systems (and derivatives).

To change font, open the `~/.spacemacs` file (`SPC f e d`) and edit the `dotspacemacs-default-font`

```lisp
   dotspacemacs-default-font '("Ubuntu Mono"
                               :size 16
                               :weight normal
                               :width normal)
```


## Zooming - Emacs Frame and Font Size

If you attach an external monitor, share your screen, give demos or presentations in Emacs, then you may need to scale the font size of your buffer or if using multiple buffers, zoom the size of your Emacs frame.

Use the Spacemacs Zoom menu to enter a transient state that will let you zoom text or frame size.

| Spacemacs | Emacs     | Description                   |
|-----------|-----------|-------------------------------|
| `SPC z f` | `M-m z f` | Zoom all the buffers in the current frame        |
| `SPC z x` | `M-m z x` | Scale the font of the current buffer                 |

[![Spacemacs - Zoom Text Transient State - Font Scalling](/images/spacemacs-zoom-text-transient-state-font-scaling.png)](/images/spacemacs-zoom-text-transient-state-font-scaling.png)


[![Spacemacs - Zoom Frame Transient State](/images/spacemacs-zoom-frame-scale-transient-state.png)](/images/spacemacs-zoom-frame-scale-transient-state.png)

> ####Hint::
> Adjusting the font size of a buffer is not permanent.  If the font size is often too big or to small, then change the `dotspacemacs-default-font` setting for `:size`.
