# Themes
You can select a different theme or cycle through the currently added themes.

| Spacemacs         | Description                                                             |
|-------------------|-------------------------------------------------------------------------|
| `SPC T n`         | Next theme in list                                                      |
| `SPC T p`         | Previous theme in list                                                  |
| `SPC T s`         | Select theme from list (all themes from gallery)                        |
| `SPC T s C-c C-f` | Apply themes when srolling through the list of names (helm-follow-mode) |

[![Spacemacs Themes menu](/images/spacemacs-themes-menu.png)](/images/spacemacs-themes-menu.png)

# Adding Themes to Spacemacs
Themes are included by adding the theme name to the `dotspacemacs-themes` list.  The first theme in the list is loaded when Spacemacs starts.

```lisp
dotspacemacs-themes '(doom-solarized-light
                      doom-solarized-dark
                      spacemacs-dark
                      spacemacs-light
                      cyberpunk)
```

The order of the themes in the list is the order Spacemacs will cycle through those themes, `SPC T n` for the next theme and `SPC T p` for the previous theme.

The first time you select a theme it will be automatically downloaded, installed and used.  This may take a few seconds to load.

> #### Hint::Doom Solarized Themes used for this guide
> This guide uses the `doom-solarized-light` theme for screenshots and videos.

## Example themes
There are many [themes available](http://themegallery.robdor.com/) for Spacemacs that will change the colours of text, background, etc.

Spacemacs has two default themes included, one light and one dark.  There are also many [themes available](http://themegallery.robdor.com/) that you can select and load on demand, `SPC T s`.

![Spacemacs theme - spacemacs-dark](/images/spacemacs-theme-dark.png)

![Spacemacs theme - spacemacs-light](/images/spacemacs-theme-light.png)


Doom Solarized Light is an excellent theme for working during the day, as well as presentations and videos due to a lighter color set having a better contrast.

![Spacemacs theme - doom solarized light](/images/spacemacs-themes-doom-solarized-light.png)

Doom Solarized Dark is a good theme for darker environments.

![Spacemacs theme - doom solarized dark](/images/spacemacs-themes-doom-solarized-dark.png)

The cyberpunk theme used a very striking color palette, familiar to those who use to use Emacs Live distribution (now deceased).

![Spacemacs theme - spacemacs-cyberpunk](/images/spacemacs-theme-cyberpunk.png)
