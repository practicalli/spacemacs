# Replacing text across projects

If you have `ripgrep`, `ag` (silver searcher), `pt` or `ack` installed, replacing an occurrence of text in
several files can be performed via [helm-ag](https://github.com/syohex/emacs-helm-ag).

## Example

To replace all `foo` occurrences by `bar` in your current project:

`SPC /` followed by a search pattern, which displays a helm popup showing all matching text across all your project files

`C-c C-e` opens a new buffer with all the search results, which you can edit.

`SPC s e` on a selected piece of text will highlight all occurences in the search results and allow you to change them all concurrently.

`ESC` or `fd` to leave iedit state (twice if in Evil insert mode).

`C-c C-c` to commit the changes you have just made, which will automatically update all the files in your project with these changes.  `C-c C-k` if you want to cancel your changes instead.


> #### TODO::Add animated gif / video example

---

> #### Hint::
> `helm-ag` despite its name works with all the search tools, except for `grep`
