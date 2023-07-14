# Git Timemachine

++spc++  ++"g"++++"t"++ opens the Git Timemachine transient state.

Easily navigate backwards and forwards through the commit history of a file under Git Version Control. The buffer shows the file as it was in each change you select.

![Spacemacs Git Timemachine Menu](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-git-timemachine-menu.png)

!!! HINT "Positioning the buffer content"
    Timemachine seems to work best when you have all the text visible in a buffer or you roughly know where the changes are in the file as you move between commits.


Use the following keys to navigate through all the commits for the current file

| Keybinding | Description                                     |
|------------|-------------------------------------------------|
| ++"c"++    | Show the most recent commit for the file        |
| ++"g"++`g` | Go to nth commit                                |
| ++"p"++`p` | Show previous commit                            |
| ++"n"++`n` | Show next commit                                |
| ++"t"++`t` | Go to revision by selected commit message       |
| ++"w"++`w` | Copy the abbreviated hash of the current commit |
| ++w++`W`   | Copy the full hash of the current commit        |
| ++"q"++`q` | Exit Timemachine transient state                |


## Customise Timemachine

`SPC SPC customize [git-timemachine]`.

![Spacemacs Git Timemachine - Customize](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-git-timemachine-customize.png)
