# Themes

++spc++ ++t++ ++"s"++ opens a helm selection menu to select from all available themes

You can select a different theme or cycle through the currently added themes.

| Spacemacs                                       | Description                                                              |
|-------------------------------------------------|--------------------------------------------------------------------------|
| ++spc++ ++t++ ++"n"++                           | Next theme in list                                                       |
| ++spc++ ++t++ ++"p"++                           | Previous theme in list                                                   |
| ++spc++ ++t++ ++"s"++                           | Select theme from list (all themes from gallery)                         |
| ++spc++ ++t++ ++"s"++ ++ctrl+"c"++ ++ctrl+"f"++ | Apply themes when scrolling through the list of names (helm-follow-mode) |

![Spacemacs Themes menu](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-themes-menu-light.png?raw=true#only-light)
![Spacemacs Themes menu](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-themes-menu-dark.png?raw=true#only-dark)


## Adding Themes to Spacemacs

Themes are set by adding the theme name to the `dotspacemacs-themes` list.  The first theme in the list is loaded when Spacemacs starts.

```emacs
dotspacemacs-themes '(doom-gruvbox-light
                      doom-gruvbox
                      spacemacs-dark
                      spacemacs-light
                      cyberpunk)
```

The order of the themes in the list is the order Spacemacs will cycle through those themes, `SPC T n` for the next theme and `SPC T p` for the previous theme.

The first time you select a theme it will be automatically downloaded, installed and used.  This may take a few seconds to load. There are many [themes available](http://themegallery.robdor.com/){target=_blank} for Spacemacs that will change the colours of text, background, etc.


`doom-gruvbox` and `doom-gruvbox-light` themes are used for the screenshots in this guide and doom-modeline theme provides an uncluttered Emacs modeline theme.

![Spacemacs theme - doom gruvbox light](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-theme-doom-gruvbox-example-light.png?raw=true#only-light)
![Spacemacs theme - doom gruvbox dark](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-theme-doom-gruvbox-example-dark.png?raw=true#only-dark)


??? HINT "Original Emacs theme"
    Add `(disable-theme)` to `dotspacemacs/user-config` section of `.spacemacs` to remove any custom theme and use the Emacs default colors.  Or set `(dotspacemacs-themes '(default))` in `.spacemacs` to use a theme similar to the Emacs colors.

