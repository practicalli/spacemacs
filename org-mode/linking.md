# Linking to files and websites
`, i l` adds a file or URL link.  Helm pop-up prompts for the filename or URL, then link text and optionally tool tip text.

`C-y` pastes the contents of the kill ring into the helm prompt, so you can easily paste URL's from your browser.

The Link prompt provides a recent history of links you have added.

Links to files will open in Spacemacs. Website links will open in your default browser.


## org-cliplink
`, i L` adds an org-mode style link using the current value of the clipboard using [`org-cliplink`](https://github.com/rexim/org-cliplink).

![Spacemacs org-cliplink](https://camo.githubusercontent.com/06f11f9b0774e196aec8b184080ce03365cd8579/687474703a2f2f692e696d6775722e636f6d2f6f41306269726d2e676966)

## Help linking to files

`SPC a o l` / `M-x org-store-link` function gets the path and filename of the current file, appending the contents of the current line of that file to the link.

`, i l` will show the stored link in the helm prompt for the Link.

`M-x org-insert-last-stored-link` will also add a link to a file using the information from `org-store-link`.


>####TODO::Add keybinding to Spacemacs org layer
> Create a pull request with a keybinding for `org-insert-last-stored-link`
