# iedit in action

How to do things with iedit

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


!!! HINT "iedit and narrowing"
    iedit selects all occurrences in a buffer.  If you only want to change one part of the text (or a specific function), then you can narrow to just edit that specific region.

    See [narrow](narrowing.md) for more details


## iedit a function

In iedit state you can:

`F` to limit the scope to the current function
`L` to limit the scope to the current line
`J` to increase the scope (starting from the current line) one line below
`K` to increase the scope one line above

Navigate between the occurrences with `n` and `N` and `TAB` to remove an occurrence.


## iedit - replace multiple words

-  manual selection of several words then replace:

`v w w SPC s e S "toto" ESC ESC`

-  append text to a word on two lines: `v i w SPC s e J i "toto" ESC ESC`

-  substitute symbol /with expand-region/: `SPC v v e S "toto" ESC ESC`

-  replace symbol with yanked (copied) text /with expand region/: `SPC v
   e p ESC ESC`


## iedit example - multiple find and replace

If you have text you want to edit in multiple places at the same time, rather than the traditional find/replace, you can select all the regions and use multiple cursors to edit all regions simultaneously.

* Put the cursor over the word you want to replace
* `v` to enter visual (select) mode
* `SPC v` to select word or region
    * `v` increases the selected region
    * `V` to reduce selected region
* `e` for iedit state
* `C-;` to edit selection
    * `n` jump to next matching selected region
    * `p` jump to previous matching selected region
    * `M-j` deselect current region
    * `S` substitute text in all regions
    * `D` delete all selected regions

++spc++  ++"s"++++"e"++ matches all instances of a region under the cursor (iedit state)
