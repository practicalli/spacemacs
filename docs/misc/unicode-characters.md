# Unicode Characters

`SPC i u` shows a pop-up list of [Unicode characters](https://en.wikipedia.org/wiki/Universal_Coded_Character_Set) by name, with each name also showing the unicode character.

The first time `SPC i u` is called the unicode characters are loaded, as spacemacs doesn't load them in by default.  Loading should only take a second.

As the popup list can be narrowed by typing part or all of the name of characters.  The list shows a fuzzy match of unicode names that match.

| Keybindings | Description                                                                      |
|-------------|----------------------------------------------------------------------------------|
| `SPC i u`   | Loads unicode characters and lists them in a popup window.  Uses helm completion |


![Spacemacs Unicode Characters](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-unicode-characters-heml-ucs.png)


## Classic Emacs Unicode 8

`C-c 8 RET` is the classic way to add Unicode 8 characters, which seems to show different symbols, is that unicode 8 and the other unicode 16 perhaps?
