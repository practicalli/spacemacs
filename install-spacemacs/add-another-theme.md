# Add another Theme

Themes that you use often can be included by simply adding the theme name to the `dotspacemacs-themes` list.  The first theme in the list is loaded when Spacemacs starts.

```lisp
dotspacemacs-themes '(spacemacs-dark
                      spacemacs-light
                      cyberpunk)
```

The order of the themes in the list is the order Spacemacs will cycle through those themes, `SPC T n` for the next theme and `SPC T p` for the previous theme.

The first time you select a theme it will be automatically downloaded, installed and used.  This may take a few seconds to load.

There are many [themes available](http://themegallery.robdor.com/) for Spacemacs that will change the colours of text, background, etc.

Here is an example of the cyberpunk theme, familiar to those who use to use Emacs Live.

![Spacemacs theme - spacemacs-cyberpunk](/images/spacemacs-theme-cyberpunk.png)

