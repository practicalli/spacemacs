# Open and create Files & directories

Open files or directories from anywhere on the file space.  New files and directories can also be created by supplying unique names.

<p style="text-align:center">
  <iframe width="560" height="315" src="https://www.youtube.com/embed/oOzzkUjtgZc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</p> 


## Opening a File

++spc++ ++"f"++ ++"f"++ runs the `spacemacs/helm-find-file` command which opens list of files and directories in the current directory.  Typing a patter narrows the items in the list to those that fuzzy match.

++enter++ on a list item to open the file or navigate through to the directory contents.

Key bindings for curor movement on the find file path

| Key binding   | Description                                        |
| ------------- | -------------------------------------------------- |
| ++tab++       | select highlighted directory / complete filename   |
| ++ctrl+"h"++  | navigate to parent directory                       |
| ++ctrl+"y"++  | paste kill ring into file path                     |
| ++ctrl+"j"++  | Move cursor down list of directories & filenames   |
| ++ctrl+"k"++  | Move cursor up list of directories & filenames     |


## Create a new file

++spc++ ++"f"++ ++"f"++ can also create a new file by typing full path and name of the new file.  A prompt confirms that a new want a new file created.

`SPC f s` to save the new file and a prompt asks if any intermediary directories should be created (if they do not already exist).

