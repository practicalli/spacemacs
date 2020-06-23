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
dotspacemacs-themes '(doom-gruvbox-light
                      doom-gruvbox
                      spacemacs-dark
                      spacemacs-light
                      cyberpunk)
```

The order of the themes in the list is the order Spacemacs will cycle through those themes, `SPC T n` for the next theme and `SPC T p` for the previous theme.

The first time you select a theme it will be automatically downloaded, installed and used.  This may take a few seconds to load.

> #### Hint::Doom Gruvbox Themes used for this guide
> This guide uses the `doom-gruvbox-light` theme for screenshots and videos, some older screenshots are `doom-solarized-light` or `spacemacs-dark`.

## Example themes
There are many [themes available](http://themegallery.robdor.com/) for Spacemacs that will change the colours of text, background, etc.

> #### Hint::Original Emacs theme ?
> Add `(disable-theme)` to `dotspacemacs/user-config` section of `.spacemacs` to remove any custom theme and use the Emacs default colors.  Or set `(dotspacemacs-themes '(default))` in `.spacemacs` to use a theme similar to the Emacs colors.

This guide uses the minimal theme provided by doom modeline and doom-gruvbox-light theme.

![Spacemacs theme - doom solarized light](/images/spacemacs-doom-gruvbox-light-theme-example-clojure-spec.png)


Doom Solarized Light is also an excellent theme for working during the day, as well as presentations and videos due to a lighter color set having a better contrast.

![Spacemacs theme - doom solarized light](/images/spacemacs-themes-doom-solarized-light.png)

Doom Solarized Dark is a good theme for darker environments.

![Spacemacs theme - doom solarized dark](/images/spacemacs-themes-doom-solarized-dark.png)


Spacemacs has two default themes included, one light and one dark.  There are also many [themes available](http://themegallery.robdor.com/) that you can select and load on demand, `SPC T s`.

![Spacemacs theme - spacemacs-dark](/images/spacemacs-theme-dark.png)

![Spacemacs theme - spacemacs-light](/images/spacemacs-theme-light.png)


The cyberpunk theme used a very striking color palette, familiar to those who use to use Emacs Live distribution (now deceased).

![Spacemacs theme - spacemacs-cyberpunk](/images/spacemacs-theme-cyberpunk.png)
