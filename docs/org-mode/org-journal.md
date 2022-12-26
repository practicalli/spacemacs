# Org Journal

[Org-journal](https://develop.spacemacs.org/layers/+emacs/org/README.html#org-journal-support) is an effective way to keep a daily record of discovery from work, personal study, hobbies or even a mood diary to help with mental wellness.

++spc++  ++"a"++ ++"o"++ ++"j"++ ++"j"++ opens a new journal entry for the current day in a new buffer. ++spc++ ++"u"++ ++spc++ ++"a"++ ++"o"++ ++"j"++ ++"j"++ to view the journal without adding a new entry.

!!! HINT "User key binding shortcut for Journal"
    ++spc++ ++"o"++ ++"j"++ is a user binding as a short-cut for ++spc++  ++"a"++ ++"o"++ ++"j"++ ++"j"++ in the [practicalli/spacemacs.d](https://github.com/practicalli/spacemacs.d){target=_blank} configuration

++"o"++ creates a new line automatically indented, or a new list item, `-` or check box list, `- [ ]`, if the previous line was that type.

++ctrl+enter++`C-RET` creates a new heading at the same level.  `M-right-arrow` demotes the current heading (smaller heading) and `M-left-arrow` promotes the current heading. `M-up/down-arrow` moved heading up or down the list of headings.

++comma++ displays the org-mode major mode commands. ++"g"++ menu contains org related commands

++comma++ ++"i"++ ++"l"++ to add a link, prompting first for the URL (++ctrl+"y"++ to paste) followed by the text of the link and an optional tool tip.

++comma++ ++"p"++ and ++comma++ ++"m"++ will show the previous and next days journal entries, providing a quick way to scroll through the diary.

++spc++ ++"f"++ ++"s"++ to save the journal entry.

![Spacemacs org journal - example journal entry](/images/spacemacs-org-journal-example-day-entry.png)

!!! HINT "Create a check box list"
    `-` is a list and `- [ ]` adds a checkbox to the list. ++comma++ ++t++ ++"c"++ toggles the mark in the checkbox, ticked or empty, for the current line.


## Tracking progress with TODO states

Any Heading level can be assigned a [TODO state](/org-mode/todo-states.md) to demonstrate progress and use the journal to manage tasks for the day.

++comma++ ++l++ or ++shift+arrow-right++ (`org-shiftright`) cycles through the states, which are `TODO` `DOING` and `DONE` by default.  ++comma++ ++h++ or ++shift+arrow-left++ to cycle the states in reverse.

Headings in the TODO state are automatically carried over when creating the next days journal.  Sub-heading with TODO states are carried over along with their parent heading(s).  See the configure section below to change this.

!!! HINT "End of day review"
    Practicalli recommends reviewing each days journal at the end of the day, before creating the next day.  This is a great opportunity to take a few moments to reflect on the day.

    ++comma++ ++"p"++ jumps to the previous days journal if items seem to be missing. Manually copy any missing items. ++comma++ ++"n"++ to view today's journal and paste those missing items.


## Tracking progress with checkboxes

`- [ ]` on a new line adds a checkbox as a list item.

++comma++ ++t++ ++"c"++ toggles the done or not done state of the checkbox from anywhere on the line.

Add a cookie to a header containing tasks to show the number or percentage of tasks complete.

* `[/]` to show number of complete task and total
* `[%]` to show the percentage of completed tasks

++ctrl+c+ctrl+"c"++ will force an update of the checkbox totals in the cookie for the current heading.

![Spacemacs Org-mode Journal - list checkbox tracking cookies](/images/spacemacs-org-mode-journal-list-checkbox-tracking-cookie.png)


## Configure org-journal

[practicalli/spacemacs.d](https://github.com/practicalli/spacemacs.d){target=_blank} includes the configuration below

To manually add org-journal, edit `.spacemacs` and add these org layer variable with suggested settings from [Spacemacs org layer documentation](https://develop.spacemacs.org/layers/+emacs/org/README.html#org-journal-support){target=_blank}

```elisp
org-enable-org-journal-support t
org-journal-dir "~/projects/journal/"
org-journal-file-format "%Y-%m-%d"
org-journal-date-prefix "#+TITLE: "
org-journal-date-format "%A, %B %d %Y"
org-journal-time-prefix "* "
org-journal-time-format ""
```

The TODO states carried over can be configured using the `org-journal-carryover-items` variable on the `org` layer in `.spacemacs`

```elisp
org-journal-carryover-items "TODO=\"TODO\"|TODO=\"DOING\"|TODO=\"BLOCKED\"|TODO=\"REVIEW\"")
```
