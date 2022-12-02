# Changing Fonts and Zooming

You can change the font to any currently installed on your computer.  The default font configured in Spacemacs is [Source Code Pro](https://adobe-fonts.github.io/source-code-pro/).


## Ubuntu Mono

Ubuntu Mono is also a great font to use for code.  This font is available from the [Ubuntu Font Family](http://font.ubuntu.com/) and on all Ubuntu operating systems (and derivatives).

To change font, open the `~/.spacemacs` file (`SPC f e d`) and edit the `dotspacemacs-default-font`

```lisp
   dotspacemacs-default-font '("Ubuntu Mono"
                               :size 16
                               :weight normal
                               :width normal)
```


## Fira Code

Fira Code is a free mono-spaced font with programming ligatures, with specific ligatures for Clojure.

![Fira Code font programming ligatures for Clojure](https://raw.githubusercontent.com/practicalli/graphic-design/live/clojure/fira-code-font-clojure-ligatures.png)

To change font, open the `~/.spacemacs` file (`SPC f e d`) and edit the `dotspacemacs-default-font`

```lisp
   dotspacemacs-default-font '("Fira Code"
                               :size 12.0
                               :weight normal
                               :width normal)
```


## Zoom Emacs Frame and Font Size

If you attach an external monitor, share your screen, give demos or presentations in Emacs, then you may need to scale the font size of your buffer or if using multiple buffers, zoom the size of your Emacs frame.

Use the Spacemacs Zoom menu to enter a transient state that will let you zoom text or frame size.

| Spacemacs | Emacs     | Description                                                            |
|-----------|-----------|------------------------------------------------------------------------|
| `SPC z f` | `M-m z f` | Zoom all Emacs frames, including the which-key and helm pop-up buffers |
| `SPC z x` | `M-m z x` | Scale the font of the current buffer                                   |

[![Spacemacs - Zoom Text Transient State - Font Scaling](/images/spacemacs-zoom-text-transient-state-font-scaling.png)](/images/spacemacs-zoom-text-transient-state-font-scaling.png)


[![Spacemacs - Zoom Frame Transient State](/images/spacemacs-zoom-frame-scale-transient-state.png)](/images/spacemacs-zoom-frame-scale-transient-state.png)

> ####Hint::
> Adjusting the font size of a buffer is not permanent.  If font or frame size is often changed, edit your `.spacemacs` configuration, `SPC f e d` and change the `:size` setting in `dotspacemacs-default-font`.
