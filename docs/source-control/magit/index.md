# MaGit - Version Control

Magit is simple to use and powerful Git client which provides equivalents for all Git CLI commands and even has a git command line option.

[Magit status](status.md) allows fine-grained staging of changes within visual diffs for files, hunks or just a single line.  Commit, amend, squash and rebase to your local repository.  Browse the commit history log which can also be used to [reset commits, interactive rebase and cherry pick changes](changing-history.md).

Magit can push and pull changes with [remote repositories](remote-repositories/) and using [Forge](forge.md) can also manage issue and pull request too.

`SPC g` opens the Git menu.

[![Spacemacs Git menu](/images/spacemacs-git-menu.png)](/images/spacemacs-git-menu.png)


`SPC g s` is the equivalent of `git status` and opens the Magit client, providing full control over local and remote Git repositories.

`?` shows the top level command menu in the Magit status buffer.

![Spacemacs Magit help menu](/images/spacemacs-magit-help-menu.png)


## Magit overview

Here is a quick demonstration of Magit in action where we stage and commit changes locally, then push those commits to [Github](https://github.com)

{% youtube %}
https://youtu.be/natNUgnh_no
{% endyoutube %}
