# Open & Create New Files

Using the **File** menu you can open files from anywhere on your file space.  New files and directories can also be created.

Use the find file command to navigate to the desired file, or type in the file name to create it.


| Spacemacs | Emacs     | Evil    | Command                    |
|-----------|-----------|---------|----------------------------|
| `SPC f f` | `C-x C-f` | `, f f` | `spacemacs/helm-find-file` |

In find file, the following key bindings are available

* `TAB` - complete or narrow the name of the file or open a matching directory
* `C-h` - navigate to parent directory
* `C-j` - move down list of files & directories
* `C-k` - move up list of files & directories
* `RET` - open a file (or dird if a directory)

<p align="center">
<iframe width="560" height="315" src="https://www.youtube.com/embed/oOzzkUjtgZc" frameborder="0" allowfullscreen></iframe>
</p>

> **Hint** When creating a new file in a new directory, you can simply type in the full path and file name and Spacemacs will prompt you to confirm the creation of the new directory and the file name.


## Alternatives

You can also use other Emacs ways to create files

* dird
* neotree
* projectile
