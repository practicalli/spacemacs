# Org-mode Headings
Organise text content with multiple levels of headings.  Focus on sections by expanding and folding the content under headings, to show the level of information required at a particular time. [TODO states](todo-states.md) can be applied to any level of headings.

`C-RTN` to create a heading at the same level of parent (top level heading if no parent)

`C-S-RTN` to create a heading with the [TODO state](todo-states.md), providing a visual marker of progress.

`o` on a heading creates a new line automatically indented for text, to which a list item, `-` or check box list, `- [ ]`, can be added.

[![Spacemacs Org-mode headings](/images/spacemacs-orgmode-headings-example.png)](/images/spacemacs-orgmode-headings-example.png)

> #### HINT::Toggle checkboxes
> `, T c` toggles the state of org checkboxes


### Collapse / Expand headings
`TAB` expands / collapses the heading at the current cursor position.

`S-TAB` will cycle through expanding and collapsing headings at different levels.


### Moving headings and content around
Items can be moved to change the order they appear, avoiding the need to cut and paste.

| Key binding      | Description                                     |
|------------------|-------------------------------------------------|
| `M-h` or `M-🡄`   | Promote heading (larger)                        |
| `M-l` or `M-🡆`   | Demote heading (smaller)                        |
| `M-H`,`M-S-🡄`    | Promote heading containing sub-headings         |
| `M-L` or `M-S-🡆` | Demote heading containing sub-headings          |
| `M-k` or `M-🡅`   | Move heading up within the same level           |
| `M-j` or `M-🡇`   | Move heading down within the same level         |
| `M-K` or `M-S-🡅` | Move heading up, jumping over parent headings   |
| `M-J` or `M-S-🡇` | Move heading down, jumping over parent headings |


> ####Hint::Arrows and other unicode symbols
> The arrow keys used in the page are unicode symbols. `SPC i u` shows a helm popup allowing you to add a symbol by name.  All the symbol names are listed along with the symbol itself.
