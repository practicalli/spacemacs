# Org-mode Headings

Organise text content with multiple levels of headings.  Focus on sections by expanding and folding the content under headings, to show the level of information required at a particular time. [TODO states](todo-states.md) can be applied to any level of headings.

++ctrl+enter++ to create a heading at the same level of parent (top level heading if no parent)

++ctrl+shift+enter++ to create a heading with the [TODO state](todo-states.md), providing a visual marker of progress.

++"o"++ on a heading creates a new line automatically indented for text, to which a list item, `-` or check box list, `- [ ]`, can be added.

![Spacemacs Org-mode headings](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-orgmode-headings-example.png)


!!! HINT "Toggle checkboxes"
    ++comma++ ++t++ ++"c"++ toggles the state of org checkboxes


### Collapse / Expand headings

++tab++ expands / collapses the heading at the current cursor position.

++shift+tab++ will cycle through expanding and collapsing headings at different levels.


### Moving headings and content around

Items can be moved to change the order they appear, avoiding the need to cut and paste.

| Key binding  | Description                                     |
|--------------|-------------------------------------------------|
| ++meta+"h"++ | Promote heading (larger)                        |
| ++meta+"l"++ | Demote heading (smaller)                        |
| ++meta+h++   | Promote heading containing sub-headings         |
| ++meta+l++   | Demote heading containing sub-headings          |
| ++meta+"k"++ | Move heading up within the same level           |
| ++meta+"j"++ | Move heading down within the same level         |
| ++meta+k++   | Move heading up, jumping over parent headings   |
| ++meta+j++   | Move heading down, jumping over parent headings |
