# GitHub Gists
[GitHub Gists](https://gist.github.com/) are used to share code or configuration without the need of a git project.

`SPC g g b` to create a Gist from the current buffer.

[![Spacemacs Git menu](/images/spacemacs-git-gist-menu.png)](/images/spacemacs-git-menu.png)

> #### Hint::Prompt for GitHub account details
> The first time using GitHub from Spacemacs you will be prompted for your GitHub username & password.
>  If you have already used GitHub from Spacemacs, then your account details will have been saved so you do not need to enter them each time.

## Listing your Gists
`SPC g g l` will display a buffer listing all Gists for your account.

![Spacemacs - Gist list](/images/spacemacs-gist-list.png)

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

## Creating Gists from files with `dird`

If you open a dired buffer you can make gists from marked files, `m`, by pressing `@`.  This will make a public gist out of marked files (or if you use with a prefix, it will make private gists)

![Gist - create a gist from the marked files in dired](/images/spacemacs-gist-dired-gist-from-file.png)
