# Org-mode Headings
You can easily organise and present information by using headings. As headings expand and fold, you can show just the level of information you need at any particular time.

[![Spacemacs Org-mode headings](/images/spacemacs-orgmode-headings-example.png)](/images/spacemacs-orgmode-headings-example.png)

> #### TODO::Videos required to really do this justice

## Create a new heading
There seem to be quite a few ways to create a heading and the same commands will do slightly different things based on context, i.e. if they cursor is on a heading or in a table.

Simplest keybinding to create a new heading is `, RET`.  If the line is blank a main heading is created.  If inside a sub-heading, a new sub-heading at the same level is created.

`, M-RET` or `M-RET M-RET` also creates a new heading.  I find this a bit weird, so maybe there is a better way.

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
