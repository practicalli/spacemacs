# iedit in action

How to do things with iedit

> ####TODO::Add video for each example


## Changing multiple occurrences

First select one instance of a character or word that occurs multiple times in the buffer.  This is typically done with visual mode, `v`.

`SPC s e` will highlight all occurrences and put you in iedit state.

Any Vim style editing will change all occurrences.

`ESC` or `fd` will end iedit state and return to Vim normal state.


## Editing selections

IEdit defaults to selecting all matches.

`C-;` in iedit state allows you to edit the selections.

Once editing the selections, use `n` to jump to next word/region and `N` to the previous.

`M-;` will toggle the selection of the current word/region.


> ####Hint::iedit and narrowing
> iedit selects all occurrences in a buffer.  If you only want to change one part of the text (or a specific function), then you can narrow to just edit that specific region.
> See [narrow](narrow.html) for more details
