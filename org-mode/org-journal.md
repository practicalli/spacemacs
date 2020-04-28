# Org Journal
[Org-journal](https://develop.spacemacs.org/layers/+emacs/org/README.html#org-journal-support) is an effective way to keep a daily record of discovery from work, personal study, hobbies or even a mood diary to help with mental wellness.

`SPC a o j j` opens a new journal entry for the current day in a new buffer.  `SPC u SPC a o j j` to view the journal without adding a new entry.

`SPC o j` is a user binding as a short-cut for `SPC a o j j`, added in the [practcialli/spacemacs.d](https://github.com/practicalli/spacemacs.d/) configuration

`o` creates a new line automatically indented, or a new list item, `-` or check box list, `- [ ]`, if the previous line was that type.

`C-RET` creates a new heading at the same level.  `M-right-arrow` demotes the current heading (smaller heading) and `M-left-arrow` promotes the current heading. `M-up/down-arrow` moved heading up or down the list of headings.

`,` displays the org-mode major mode commands. `g` menu contains org related commands

`, i l` to add a link, prompting first for the URL (`C-y` to paste) followed by the text of the link and an optional tool tip.

`, p` and `, n` will show the previous and next days journal entries, providing a quick way to scroll through the diary.

`SPC f s` to save the journal entry.

![Spacemacs org journal - example journal entry](/images/spacemacs-org-journal-example-day-entry.png)

> #### Hint::Create a check box list
> `-` is a list and `- [ ]` adds a checkbox to the list.  `, T c` will toggle the mark in the checkbox, ticked or empty, for the current line.


## Tracking progress
Any Heading level can be assigned a [TODO state](/org-mode/todo-states.md) to demonstrate progress and use the journal to manage tasks for the day.

`, L` or `S-🡆` (`org-shiftright`) cycles through the states, which are `TODO` `DOING` and `DONE` by default.  `, H` or `S-🡄` to cycle the states in reverse.

Headings not in a DONE state are automatically carried over when creating the next days journal.  Sub-heading with TODO states are carried over along with their parent heading(s).

> #### Hint::End of day review
> Practicalli recommends reviewing each days journal at the end of the day, before creating the next day.  This is a great opportunity to take a few moments to reflect on the day.

---

> #### WARNING::Stateless headings not carried over
> Headings without a state or that do not contain a sub-heading with a state are not automatically carried over to the next day.  So ensure a TODO state is somewhere in the heading hierarchy.
>
> `, p` jumps to the previous days journal, so checking all items have moved across is easy.  Kill entries you want to move into today's journal, `, n` to view today's journal and paste.


## Configure org-journal
[practicalli/spacemacs.d](https://github.com/practicalli/spacemacs.d/) includes this configuration

To manually add org-journal, edit `.spacemacs` and add these org layer variable with suggested settings from [Spacemacs org layer documentation](https://develop.spacemacs.org/layers/+emacs/org/README.html#org-journal-support)

```elisp
org-enable-org-journal-support t
org-journal-dir "~/projects/journal/"
org-journal-file-format "%Y-%m-%d"
org-journal-date-prefix "#+TITLE: "
org-journal-date-format "%A, %B %d %Y"
org-journal-time-prefix "* "
org-journal-time-format ""
```
