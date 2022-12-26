# Lists and Checkboxes

List and Checkboxes are useful for organizing and tracking tasks.

## Using lists

`-` creates a list item in Evil insert mode

`o` on a list item creates a new list item below when in Evil normal mode. `O` creates a checkbox above.

`M ->` on a list item creates a sub-list and `M <-` promotes a list item


## Using checkboxes

`- [ ]` creates a list item as a checkbox

`o` on a checkbox item creates a new checkbox item below when in Evil normal mode. `O` creates a checkbox above.

`M ->` on a list item creates a sub-list and `M <-` promotes a list item

`, T c` toggles the mark in the checkbox  (unless the checkbox has children)

When a child checkbox is marked, the parent has a dash to show partial completion.  When all child checkboxes are crossed, then the parent is automatically crossed.


## Tracking checkbox completion

Add `[/]` to the end of a heading that contains checkboxes to track the number of completed checkboxes and the total number of checkboxes.

Totals will automatically update when the status of a checkbox updates.

`C-c` when the cursor is on one of the `[x/x]` header totals will update all the totals for all the org-mode buffer.

![Spacemacs org-mode checkboxes and header tracking](/images/spacemacs-org-mode-checkboxes-header-tracking.png)
