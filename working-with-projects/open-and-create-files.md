# Open and creating Files (and directories)

{% youtube %}
https://www.youtube.com/embed/oOzzkUjtgZc?autoplay=1loop=1
{% endyoutube %}


## Opening a File

Using the **File** menu you can open files from anywhere on your file space.  New files and directories can also be created.

![Spacemacs - File menu](/images/spacemacs-file-menu.png)

**Find File**, `SPC f f` will open a file from anywhere on the file system.  A **helm** pop-up window appears at the bottom listing directories and files from the current directory.

![Spacemacs - File menu - Find File helm popup](/images/spacemacs-file-menu-find-helm-popup.png)

As you type the name you are looking for, the list of matching directory and file names narrows to just those that match.

| Keybindings | Description                                      |
|-------------|--------------------------------------------------|
| `TAB`       | select highlighted directory / complete filename |
| `C-h`       | navigate to parent directory                     |
| `C-y`       | paste kill ring into file path                   |
| `C-j`       | Move cursor down list of directories & filenames |
| `C-k`       | Move cursor up list of directories & filenames   |


## Create a new file (and directory)

A new file (and directories) can also be created using `SPC f f`. Simply enter the full path and name of the new file.  You are prompted to confirm that you want a new file created.

When you save the file, `SPC f s` you are prompted to create any directories required.


### Auto-renaming Files for kebab-case namespace

When you create a new file for a namespace that has multiple words, then convention is to use **kebab-case** to separate the words.

However, due to a limitation with the Java Virtual Machine class loader, filenames should not include dashes, rather they should use underscore characters instead.

So when you create a new file for a kebab-case namespace, Spacemacs will ask if you want to change the filename to use underscores for the dashes in the name.  Say yes to keep the Java class loader happy.

> TODO: gif of creating a new file - use kebab-case filename to show auto-renaming.



## Reference

| Vim Normal | Emacs     | Command                    |
|------------|-----------|----------------------------|
| `SPC f f`  | `M-m f f` | `spacemacs/helm-find-file` |

In find file, the following key bindings are available

* `TAB` - complete or narrow the name of the file or open a matching directory
* `C-h` - navigate to parent directory
* `C-j` - move down list of files & directories
* `C-k` - move up list of files & directories
* `RET` - open a file (or dird if a directory)

> ####Hint::Creating files and directories
> When creating a new file in a new directory, you can simply type in the full path and file name and Spacemacs will prompt you to confirm the creation of the new directory and the file name.
