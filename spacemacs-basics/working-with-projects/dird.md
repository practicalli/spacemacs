# dired Emacs directory editor

A Dired buffer displays the contents of a single directory or listings of one or more sub-directories. A Dired buffer can display an arbitrary set of files and directories from any file systems.

`dired` mode is built-in to Emacs (version 23 onward)

`SPC f f` and select the `.` root of a directory to open a directory listing in dired

`SPC f j` or `SPC j d` to jump to the current buffer in a dired buffer.  `SPC j D` opens dired buffer in a different window.

Use Evil style navigation and editing with the dired buffer

`SPC SPC wdired-change-to-wdired-mode` WDired mode (writable dired) enables editing of the dired buffer. Names of the files in the buffer, the target of symbolic links and the permission bits of the files can be changed.

## Dired commands

`m` mark files to run an action across multiple files in the listing

| key      | Action              |
|----------|---------------------|
| `*`      | mark / unmark meun  |
| `R`      | rename a file       |
| `C`      | copy file           |
| `+`      | make directory      |
| `m`      | mark files          |
| `u`      | unmark              |
| `d`      | flag for deletion   |
| `s`      | sort menu           |
| `x`      | execute deletions   |
| `^ or -` | move up a directory |


## Rename files with WDired mode

The names in a dired directory listing can be renamed by editing the file names in the dired buffer and committing the changes.

`SPC f f` and select the `.` root of a directory to open a directory listing in dired (or switch to an open dired buffer).

`SPC SPC wdired-change-to-wdired-mode` to make the dired buffer writable.  The cursor enters insert mode and is placed on the top entry of the directory listing.

Use [Evil style editing](/spacemacs-basics/evil/) to manage changes to the file names.  Some Evil tools and Multiple cursors are not available in the WDired mode, so [experience with Evil basics](/spacemacs-basics/evil/) can be very useful.

`C-c C-c` to commit the changes and update all the affected files.

`C-c Esc` to cancel all changes.

> #### Hint::Small changes often
> Undo is not available in this mode, so make simple changes and save the results as soon as possible.


### Emacs macro for multiple file renames

Record a macro to rename a file and run the macro over multiple lines in the dired buffer in WDired mode.

`q a` in normal mode will start recording all following key bindings

`q` again to stop recording and save all the key bindings as a macro bound to the `a` character.

> Any character other than `q` can be used as the macro name and Practicalli finds `a`, `z` and `x` as convenient characters for macros.

`@ a` to run the macro and repeat the same change

`24 @ a` to run the macro on  the next 24 lines including the current line,  repeating the same change on multiple file names in the dired buffer.

> #### Hint::Reset cursor position at end of macro
> If using positional aspects for changes made by the macro ensure the cursor is moved back to the correct starting place just before ending the macro recording.
>
> Reference: [Mastering Emacs: Macros](https://www.masteringemacs.org/article/keyboard-macros-are-misunderstood)


<!--
TODO: Check Multiple cursors in WDired mode


## Bulk rename

`:bulkrename`

-->
