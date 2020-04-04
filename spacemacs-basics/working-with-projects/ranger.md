# Ranger file manager

Ranger is a very fast and lightweight file manager that is great for previewing files without explicitly opening them.  Ranger is very well suited to Vim keybindings too.

Ranger is not part of Spacemacs by default, so the simplest way is to add the [ranger layer](http://spacemacs.org/layers/+tools/ranger/README.html).

![Spacemacs - Ranger file manager](/images/spacemacs-ranger-example-book.png)

## Add ranger layer to Spacemacs

Edit your `~./spacemacs` file and in the `...` section add the following layer

```elisp
(ranger :variables
             ranger-show-preview t
             ranger-show-hidden t
             ranger-cleanup-eagerly t
             ranger-cleanup-on-disable t
             ranger-ignored-extensions '("mkv" "flv" "iso" "mp4"))
```

This layer definition will add the ranger package and set some recommended variables:
* preview files when the cursor is on a file name in ranger
* show hidden files (dotfiles)
* clean up buffers when closing ranger
* file name extensions to ignore (multi-media files)


## Basic usage

| Keybinding | Description                                                           |
|------------|-----------------------------------------------------------------------|
| `SPC a r`  | Open ranger in current buffer directory                               |
| `q`        | Quit ranger                                                           |
| `j`        | Move down the current list / preview screen                           |
| `k`        | Move up the current list / preview screen                             |
| `l`        | Jump into currently selected child directory / or open previewed file |
| `h`        | Up to the parent directory                                            |


## File management

| Keybinding   | Description                                       |
|--------------|---------------------------------------------------|
| `r`          | revert buffer                                     |
| `R`          | rename current file or directory                  |
| `D`          | delete ...                                        |
| `yy`         | copy                                              |
| `pp`         | paste                                             |
| `f`          | search for file names                             |
| `i`          | toggle showing literal / full-text previews       |
| `zh`         | toggle dot files                                  |
| `o`          | sort options                                      |
| `H`          | search through history                            |
| `z-` or `z+` | reduce / increase parents                         |
| `C-SPC`      | mark a file or directory                          |
| `v`          | toggle mark                                       |
| `V`          | visually select lines                             |
| `;C`         | copy / move directory                             |
| `;+`         | create directory                                  |
| `SPC a d`    | deer (minimal ranger window in current directory) |
| `C-j`        | (ranger) scroll preview window down               |
| `C-k`        | (ranger) scroll preview window up                 |
| `S`          | (ranger) enter shell                              |
