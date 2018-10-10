# Org-mode: Headings

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

| Keybinding         | Description                                        |
|--------------------|----------------------------------------------------|
| `M-h` or `M-🡄`     | Increase the level of the heading                  |
| `M-l` or `M-🡆`     | Decrease the level of the heading                  |
| `M-S-h`,`M-S-🡄`    | Increase the level of the heading and sub-headings |
| `M-S-l` or `M-S-🡆` | Decrease the level of the heading and sub-headings |
| `M-k` or `M-🡅`     | Move heading up within the same level              |
| `M-j` or `M-🡇`     | Move heading down within the same level            |
| `M-S-k` or `M-S-🡅` | Move heading up, jumping over parent headings      |
| `M-S-j` or `M-S-🡇` | Move heading down, jumping over parent headings    |

> #### Hint::Moving headings with sub-headings
> If a heading you wish to change contains sub-headings, then also use the `SHIFT` key and all the sub-headings will change along with the heading under the cursor.  Without shift, the heading may not change.

------------------------------------------

> ####Hint::Arrows and other unicode symbols
> `SPC i u` shows a helm popup allowing you to add a symbol by name.  All the symbol names are listed along with the symbol itself.
