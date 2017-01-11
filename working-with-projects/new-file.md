# Add a new file

Create a new file for each new namespace that makes up your project using find file.

Navigate to the desired path for the file using the following commands, then type the name of the new file.  You are prompted to confirm the creation of the new file.


| Spacemacs | Emacs     | Evil    | Command                    |
|-----------|-----------|---------|----------------------------|
| `SPC f f` | `C-x C-f` | `, f f` | `spacemacs/helm-find-file` |


> TODO: gif of creating a new file - use kebab-case filename to show auto-renaming.


## Auto-renaming Files for kebab-case namespace

When you create a new file for a namespace that has multiple words, then convention is to use **kebab-case** to separate the words.

However, due to a limitation with the Java Virtual Machine class loader, filenames should not include dashes, rather they should use underscore characters instead.

So when you create a new file for a kebab-case namespace, Spacemacs will ask if you want to change the filename to use underscores for the dashes in the name.  Say yes to keep the Java class loader happy.


## Alternatives

You can also use other Emaacs ways to create files

* dird
* neotree


