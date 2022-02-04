# Rename or deleting files from the project

`SPC f R` to rename and existing file.

`SPC f D` to permanently delete a file.


## Source code files

`, r r` on a namespace name uses LSP to rename that namespace and file name consistently, especially where a namespace is required within other namespace forms.

When changing a namespace, the Vars, `def` / `defn` expressions, it contains should be removed from the running REPL, to prevent inconsistencies between the code and REPL.

`, e u` (`cider-undef`) will remove the current var from the REPL (uses nREPL undef command)

Alternatively, `, q r` to restart the REPL after names have been changed or deleted.


## Version Controlled files

`SPC g s` opens Magit status.

`s` to stage the deleted file (previous file name) and the new file name (in untracked files).  Magit status should show the file as renamed, unless the contents was significantly changed.

`x` on a file name in Magit Status buffer will delete that file.  A prompt will show in the mini-buffer to confirm you want to 'Trash' the file.

`v` enters visual select mode, `j` and `k` can be used to select multiple files.  `x` deletes all the selected files, with a mini-buffer prompt to confirm.
