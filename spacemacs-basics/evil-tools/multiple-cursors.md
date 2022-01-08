# Multiple Cursors

Create multiple cursors to edit in parallel multiple lines of text in the current buffer.

Multiple cursors is especially useful where lines are not entirely identical, i.e. they have the same basic form but have different values

Multiple cursors allows you to call all Emacs named functions and have the results output to each cursor you have created.

> #### Hint::iedit or multiple cursors
> iedit is excellent for all kinds of search and replace actions where the text to change is the same.  iedit finds all matches in a buffer or the scope created by [narrowing](narrowing.md).
>
> Where text lines do not match but have a similar form, multiple cursors allow for more irregular changes

## Common usage

`g r` shows the menu for multiple cursors

`g r j` adds a cursor to the next line

`24 g r j` will create multiple cursors for 24 consecutive lines.

`g r I` adds cursors to visual selection lines, `S-v` and arrow keys, or `v 20 j` to select the next 24 lines

> #### Hint::Using Narrowing to constrain where cursors are created
> `SPC n` menu allows you to narrow the view on the current buffer
> `SPC n f` narrows to the current function definition
> `SPC n r` narrows to a selected range of text
>
> See the section on [Spacemacs - Narrowing](narrowing.md)

## Keybindings

The most commonly used key bindings for multiple cursors

| Evil normal | Description                                                                   |
|-------------+-------------------------------------------------------------------------------|
| `g r j`     | creates a new cursor on the line below (adhoc changes)                        |
| `g r k`     | create new cursor on the line above (adhoc changes)                           |
| `g r I`     | create new cursor on selected lines                                           |
| `g r m`     | create cursors on all matching text (under cursor or region of selected text) |
| `g r n`     | make a cursor at point and go to the next match                               |
| `g r N`     | go to the next match without creating a cursor at current point               |
| `g r p`     | make a cursor at point and go to the previous match                           |
| `g r P`     | go to the previous match without creating a cursor at current point           |
| `g r q`     | when you have finished to remove all cursors and leave just one cursor.       |

`g r` shows the full menu

![Spacemacs G menu multiple cursor commands](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/screenshots/menus/spacemacs-g-menu-multiple-cursors.png)

> #### TODO::Add video of most commonly used features

## Known issues

* Only named commands can be executed by multiple cursors.
* There could be a performance penalty when there are too many cursors (30+).
* Paste will not work when the Spacemacs paste transient state is enabled. This is due to the fact that evil-paste-pop and evil-paste-pop-next commands are not supported.
* evil-repeat works only for some commands. In particular it doesn’t work for delete. It will also interfere with the cursor positions during an undo or redo operation.

## Reference

* [multiple cursors layer - Spacemacs develop documentation](http://develop.spacemacs.org/layers/+misc/multiple-cursors/README.html)
* [evil-mc](https://github.com/gabesoft/evil-mc) - default backend for multiple cursors layer
* [evil-multiedit](https://github.com/hlissner/evil-multiedit) - used in Doom Emacs
