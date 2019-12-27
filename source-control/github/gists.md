# Github Gists

[Github Gists](https://gist.github.com/) are really useful when you want to share a piece of code or configuration without setting up or sharing a complete a git project.  Rather than copy & paste into a [Github Gists](https://gist.github.com/) website, you can create a Gist from any [Spacemacs](https://github.com/syl20bnr/spacemacs) buffer with a single command.

[![Spacemacs Git menu](/images/spacemacs-git-gist-menu.png)](/images/spacemacs-git-menu.png)

## Creating a Gist from Spacemacs

The current buffer can be copied into a Github Gist using the command `M-x gist-buffer`.

![Gist - create a Gist from the current buffer](/images/spacemacs-gist-create-from-buffer.png)

You can also create a gist just from a selected region of the buffer.  First select the region using `C-SPC` and run the command `M-x gist-region`.

> #### Hint::Prompt for Github account details
> If this is the first time using Github from Spacemacs, you will be prompted for your Github username & password.
>  If you have already used Github from Spacemacs, then your account details will have been saved so you do not need to enter them each time.

**Keyboard shortcuts**
- `SPC g g b` : create a public gist from the current Spacemacs buffer
- `SPC g g B` : create a private gist from the current Spacemacs buffer
- `SPC g g r` : create a public gist from the highlighted region
- `SPC g g R` : create a private gist from the highlighted region
- `SPC g g l` : list all gists on your github account

> Replace `SPC` with `M-m` if you are using Holy mode

## Updating a Gist

When you create a Gist from a buffer there is no direct link between your buffer and the Gist.  So if you make changes to your buffer you want to share, you can generate a new gist using `M-x gist-buffer` & delete the original one (see listing & managing gists below).

Alternatively, once you have created a Gist, you can open that Gist in a buffer and make changes.  When you save your changes in the Gist buffer, `C-x C-s`, the gist on gist.github.com is updated.


## Listing & managing Gists

Use the command `M-x gist-list` or keybinding `M-m g g l` to show a list of your current Gists.

![Spacemacs - Gist list](/images/spacemacs-gist-list.png)

In the buffer containing the list of your gists, you can use the following commands in **Emacs** mode.

* `RETURN` : opens the gist in a new buffer
* `g` : reload the gist list from server
* `e` : edit the gist description, so you know what this gist is about
* `k` : delete current gist
* `b` : opens the gist in the current web browser
* `y` : show current gist url & copies it into the clipboard
* `*` : star gist (stars do not show in gist list, only when browsing them on github)
* `^` : unstar gist
* `f` : fork gist - create a copy of your gist on gist.github.com
* `+` : add a file to the current gist, creating an additional snippet on the gist
* `-` : remove a file from the current gist

The Spacemacs Github layer adds the following key bindings for **Vim**

| Normal | Description                   | Command                 |
|--------|-------------------------------|-------------------------|
| `f`    | open gist in another buffer   | gist-fetch-current      |
| `K`    | delete current gist           | gist-kill-current       |
| `o`    | open gist in your web browser | gist-browse-current-url |


## Creating Gists from files with `dird`

If you open a dired buffer you can make gists from marked files, `m`, by pressing `@`.  This will make a public gist out of marked files (or if you use with a prefix, it will make private gists)

![Gist - create a gist from the marked files in dired](/images/spacemacs-gist-dired-gist-from-file.png)
