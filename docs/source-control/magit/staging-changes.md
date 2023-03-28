# Staging changes

Regularly staging changes provides an additional safety net as you work towards a meaningful change.

Magit enables very fine grain selection when staging changes.  A file, a hunk or even a specific line can be staged and unstaged.  This makes it very easy to create clean commits.

++"s"++ to stage the current file, hunk or selected region.  Multiple files can be staged by selecting the filenames.  ++s++ stages all the **untracked files** and **Unstaged changes**.

++"u"++ to unstage the current file, hunk or selected region in the **staged changes** section. ++u++ to unstage everything (from anywhere in the Magit Status buffer).

![Spacemacs Magit Status - staging files](/images/spacemacs-magit-status-staging-untracked-unstaged-staged-changes.png)

++tab++ to expand a section, eg. a file expands to git hunks, hunks expand to lines in the hunk.  ++shift+tab++ to collapse a section.

++bracket-left++ to jump down from section to section, ++bracket-right++ to jump back up.

++"v"++ to visually select one or more filenames or lines to stage or unstage.

!!! INFO "Visual select within hunk boundary"
    Selecting lines to stage or unstage only works within the Git hunk boundary.  The action fails if lines are selected from more than one hunk.

!!! HINT "Hiding white-space in Magit diff"
    `D` in the Magit Status buffer to change how diffs are rendered

    `-b` ignore whitespace changes

    `-w` to ignore all whitespace


## Renamed files

++"s"++ to stage the deleted file (previous file name) and the new file name (in untracked files).  Magit status should show the file as renamed, unless the contents was significantly changed.

++"x"++ on a file name in Magit Status buffer will delete that file.  A prompt will show in the mini-buffer to confirm you want to 'Trash' the file.

++"v"++ enters visual select mode, ++"j"++ and ++"k"++ can be used to select multiple files.  ++"x"++ deletes all the selected files, with a mini-buffer prompt to confirm.


## Magit staging and commit basics

<p style="text-align:center">
<iframe width="560" height="315" src="https://www.youtube.com/embed/natNUgnh_no" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</p>
