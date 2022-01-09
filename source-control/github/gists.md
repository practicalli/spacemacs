# GitHub Gists

> #### Hint::gists.el not functioning correctly
> Changes to the GitHub API have resulted in gist.el failing to work for most functions.  It should be possible to create a gist from a buffer and list gists, however, other functions my not work or stop Emacs from working

[GitHub Gists](https://gist.github.com/) are used to share code or configuration without the need of a git project.

> #### Hint::github layer no longer includes gist support
> [gist.el](http://github.com/defunkt/gist.el) was removed from the GitHub layer on 2021-11-02 citing a broken and unmaintained package.  However, adding gist as an additonal package, using `dotspacemacs-additional-package (gist)` in .spacemacs seems to work.  Some [investigation](https://github.com/syl20bnr/spacemacs/issues/15183) is being done as to what features are no longer working with gist.el.

## Manually add Gist support

`SPC f e d` to edit the Spacemacs configuration

`/ additional-packages RET` to find the `dotspacemacs-additional-packages` directive

Add gist as an additional package

```elisp
dotspacemacs-additional-packages '(gist)
```

Add keybindings for the package in the `dotspacemacs/user-config` section of `.spacemacs` configuration

```elisp
(spacemacs/set-leader-keys "ogb" 'gist-buffer)
(spacemacs/set-leader-keys "ogb" 'gist-list)
```


## Create a Gist from current buffer

`SPC o g b` to create a Gist from the current buffer.

[![Spacemacs Git menu](/images/spacemacs-git-gist-menu.png)](/images/spacemacs-git-menu.png)

> #### Hint::Prompt for GitHub account details
> The first time using GitHub from Spacemacs you will be prompted for your GitHub username & password.
> If you have already used GitHub from Spacemacs, then your account details will have been saved so you do not need to enter them each time.

## Listing your Gists

`SPC o g l` will display a buffer listing all Gists for your account.

![Spacemacs - Gist list](/images/spacemacs-gist-list.png)

> #### DANGER::Viewing a Gist hangs Emacs
> `RET` on an entry in the Gist list should download that Gist and open it in a buffer.  Unfortunately this seems to hang Emacs and leave it in an unrecoverable state.

Use the following commands in the Gist list buffer.

| Normal | Description                                   |
|--------|-----------------------------------------------|
| `RET`  | open gist                                     |
| `f`    | open gist in another buffer                   |
| `K`    | delete current gist                           |
| `o`    | open gist in your web browser                 |
| `g`    | reload gist list                              |
| `e`    | edit the gist description                     |
| `y`    | copy gist URL                                 |
| `*`    | star (favorite) a gist (shows only on GitHub) |
| `^`    | remove star from gist                         |
| `f`    | fork gist on GitHub                           |
| `+`    | add file to current gist                      |
| `-`    | remove a file from current gist               |


## Updating a Gist
`SPC g g l` to show the list of gists.

`RET` opens the gist in Spacemacs and make changes.

`SPC f s` prompts to save a local copy of the file, saving there and creating a new version on gist.github.com.


> #### Hint::Gists created from a buffer are not updated
> Creating a Gist from a buffer has no direct link between that buffer and the Gist.  Any changes to the buffer is not updated.
>
> Once the gist is created, delete the original file and open the Gist (as described above).  Then changes to the file will be saved

## Creating Gists with `dired`

If you open a dired buffer you can make gists from marked files, `m`, by pressing `@`.  This will make a public gist out of marked files (or if you use with a prefix, it will make private gists)

![Gist - create a gist from the marked files in dired](/images/spacemacs-gist-dired-gist-from-file.png)
