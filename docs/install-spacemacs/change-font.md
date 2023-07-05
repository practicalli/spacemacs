# Fonts and Zooming

Any font currently installed in the operating system can be used for Spacemacs.

[practicalli/spacemacs.d](https://github.com/practicalli/spacemacs.d){target=_blank} sets Fira Code font, which is designed for working with source code and also supports ligatures.

Spacemacs will use [Source Code Pro](https://adobe-fonts.github.io/source-code-pro/) by default.



## Fira Code

Fira Code is a free mono-spaced font with programming ligatures, with specific ligatures for Clojure.

![Fira Code font programming ligatures for Clojure](https://raw.githubusercontent.com/practicalli/graphic-design/live/clojure/fira-code-font-clojure-ligatures.png)

++spc++ ++"f"++ ++"e"++ ++"d"++ to open the Spacemacs configuration file and edit the `dotspacemacs-default-font` values

```lisp
   dotspacemacs-default-font '("Fira Code"
                               :size 12.0
                               :weight normal
                               :width normal)
```


## Ubuntu Mono

Ubuntu Mono is also a great font to use for code.  This font is available from the [Ubuntu Font Family](http://font.ubuntu.com/) and on all Ubuntu operating systems (and derivatives).

++spc++ ++"f"++ ++"e"++ ++"d"++ to open the Spacemacs configuration file and edit the `dotspacemacs-default-font` values

```lisp
   dotspacemacs-default-font '("Ubuntu Mono"
                               :size 16
                               :weight normal
                               :width normal)
```


## Zoom Emacs Frame and Font Size

If you attach an external monitor, share your screen, give demos or presentations in Emacs, then you may need to scale the font size of your buffer or if using multiple buffers, zoom the size of your Emacs frame.

Use the Spacemacs Zoom menu to enter a transient state that will let you zoom text or frame size.

| Key binding             | Description                                                            |
|-------------------------|------------------------------------------------------------------------|
| ++spc++ ++"z"++ ++"f"++ | Zoom all Emacs frames, including the which-key and helm pop-up buffers |
| ++spc++ ++"z"++ ++"x"++ | Scale the font of the current buffer                                   |

[![Spacemacs - Zoom Text Transient State - Font Scaling](/images/spacemacs-zoom-text-transient-state-font-scaling.png)](/images/spacemacs-zoom-text-transient-state-font-scaling.png)


[![Spacemacs - Zoom Frame Transient State](/images/spacemacs-zoom-frame-scale-transient-state.png)](/images/spacemacs-zoom-frame-scale-transient-state.png)

!!! TIP "Update font size"
    If font or frame size is often changed, edit your `.spacemacs` configuration, `SPC f e d` and change the `:size` setting in `dotspacemacs-default-font`.
