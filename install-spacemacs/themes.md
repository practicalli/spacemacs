# Themes

There are many [themes available](http://themegallery.robdor.com/) for Spacemacs that will change the colours of text, background, etc.

Spacemacs has two default themes, one light and one dark.

![Spacemacs theme - spacemacs-dark](/images/spacemacs-theme-dark.png)

![Spacemacs theme - spacemacs-light](/images/spacemacs-theme-light.png)


## Changing Themes

You can select a theme or cycle through the currently added themes.

| Spacemacs | Description                                      |
|-----------|--------------------------------------------------|
| `SPC T n` | Next theme in list                               |
| `SPC T p` | Previous theme in list                           |
| `SPC T s` | Select theme from list (all themes from gallery) |
 
 
More theme options are available via the themes menu, `SPC T`

[![Spacemacs Themes menu](/images/spacemacs-themes-menu.png)](/images/spacemacs-themes-menu.png)


## Add another Theme

Themes can be added dynamically by simply adding the name of the theme to the `dotspacemacs-themes` list.  The first theme in the list is loaded when Spacemacs starts.

```lisp
dotspacemacs-themes '(spacemacs-dark
                         spacemacs-light
                         cyberpunk)
```

The first time you select a theme it will be automatically downloaded, installed and used.  This may take a few seconds to finish.

Here is an example of the cyberpunk theme, familiar to those who use to use Emacs Live.

![Spacemacs theme - spacemacs-cyberpunk](/images/spacemacs-theme-cyberpunk.png)
