# Multiple Cursors

Create multiple cursors in a buffer to concurrently edit or output text from calling an Emacs function.

[Multiple cursors](http://develop.spacemacs.org/layers/+misc/multiple-cursors/README.html) allows you to call Emacs functions and have the results output to each cursor you have created.

> #### Hint::iedit or multiple cursors
> iedit is excellent for all kinds of search and replace actions using the Evil editing commands.  iedit finds all matches in a buffer and the scope can be limited by first using narrowing.
>
> Multiple cursors can create multiple editing points on matching text or in adhoc positions. It can also apply Emacs functions at each of the cursors you created, expanding on the types of changes you can make.

## Basic usage

`g r` shows the menu for multiple cursors

![Spacemacs - Multiple Cursors - menu `g r`](/images/spacemacs-multiple-cursors-menu.png)

> #### TODO::Add video of most commonly used features


## Multiple cursor tips

`24 g r j` will create multiple cursors for 24 consecutive lines.


## Keybindings

| Evil normal | Description                                                                   |
|-------------|-------------------------------------------------------------------------------|
| `g r m`     | create cursors on all matching text (under cursor or region of selected text) |
| `g r n`     | make a cursor at point and go to the next match                               |
| `g r p`     | make a cursor at point and go to the previous match                           |
| `g r N`     | go to the next match without creating a cursor at current point               |
| `g r P`     | go to the previous match without creating a cursor at current point           |
| `g r j`     | creates a new cursor on the line below (adhoc changes)                        |
| `g r k`     | create new cursor on the line above (adhoc changes)                           |
| `g r q`     | when you have finished to remove all cursors and leave just one cursor.       |


> #### Hint::Using Narrowing to constrain where cursors are created
> `SPC n` menu allows you to narrow the view on the current buffer
> `SPC n f` narrows to the current function definition
> `SPC n r` narrows to a selected range of text
>
> See the section on [Spacemacs - Narrowing](narrowing.md)


## Known issues
* Only named commands can be executed by the fake cursors.
* There could be a performance penalty when there are too many cursors (30+).
* Paste will not work when spacemacs’ paste micro state is enabled. This is due to the fact that evil-paste-pop and evil-paste-pop-next commands are not supported.
* evil-repeat works only for some commands. In particular it doesn’t work for delete. It will also interfere with the cursor positions during an undo or redo operation.

## Reference

* [multiple cursors layer - Spacemacs develop documentation](http://develop.spacemacs.org/layers/+misc/multiple-cursors/README.html)
* [evil-mc](https://github.com/gabesoft/evil-mc) - default backend for multiple cursors layer
* [mc](https://github.com/magnars/multiple-cursors.el) - original emacs package by magnars, not actively maintained.
