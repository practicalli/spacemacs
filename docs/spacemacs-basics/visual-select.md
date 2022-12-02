# Visual Select
Select characters, words, lines and regions with visual select.  The background changes color to visually indicate which text is selected

`v` enters visual select mode and can be with objects such as word `w` and locations such as end of line `$`.

`SPC v` to select a word, `v` to widen the selection, `V` to narrow, `r` to reset (cancel) the selection.

`o` to expand from left side of selection and `O` to expand from the right side of a selection, using the `hjkl` navigation keys


## Visual Line selection
`V` to select by lines, using `j` and `k`.

## Visual Region selection
`C-v` to select a region using the `hjkl` navigation keys.

## iedit
`e` in visual select state starts iedit mode, highlighting all occurrences of the selection. Any change to the highlighted text is concurrently applied to all occurrences.

`ESC` or `fd` to end the iedit session.
