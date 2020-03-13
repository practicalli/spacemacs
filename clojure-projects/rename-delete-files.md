# Rename or deleting files from the project

Before renaming or deleting files from a Clojure project, its recommended to undefine any vars, i.e. `def` and `defn` expressions.  Or restart the REPL after you have deleted the file.

`SPC f R` to rename and existing file.

`SPC f D` to permanently delete a file.


## Version Controlled files

Renaming files should be detected by Magit status, `SPC g s`.  If not, stage, `s`, both the old file name (marked as deleted) and the new file name (untracked files).  Magit status should then show the file as renamed, unless you heavily modified its content.

`x` on a file name in Magit Status buffer will delete that file.  A prompt will show in the mini-buffer to confirm you want to 'Trash' the file.

`v` enters visual select mode, `j` and `k` can be used to select multiple files.  `x` deletes all the selected files, with a mini-buffer prompt to confirm.
