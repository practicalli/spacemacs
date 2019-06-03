# Linking to files and websites

`, i L` adds an org-mode style link using the current value of the clipboard using [`org-cliplink`](https://github.com/rexim/org-cliplink).

`, i l` adds an org-mode style link to your org files. Links to files will open in Spacemacs and website links will open in your default browser.

`C-y` pastes the contents of the kill ring into the link prompt, so you can easily copy/paste URL's from your browser.

The Link prompt also provides a history of links you have added.


## `org-cliplink` in action

![Spacemacs org-cliplink](https://camo.githubusercontent.com/06f11f9b0774e196aec8b184080ce03365cd8579/687474703a2f2f692e696d6775722e636f6d2f6f41306269726d2e676966)

## Help linking to files

`SPC a o l` / `M-x org-store-link` function gets the path and filename of the current file, appending the contents of the current line of that file to the link.

`, i l` will show the stored link in the helm prompt for the Link.

`M-x org-insert-last-stored-link` will also add a link to a file using the information from `org-store-link`.


>####TODO::Add keybinding to Spacemacs org layer
> Create a pull request with a keybinding for `org-insert-last-stored-link`
