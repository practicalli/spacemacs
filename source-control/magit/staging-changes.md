# Staging and unstaging changes
Regularly staging changes provides an additional safety net as you work towards a meaningful change.

Magit enables very fine grain selection when staging changes.  A file, a hunk or even a specific line can be staged and unstaged.  This makes it very easy to create clean commits.

`s` to stage the current file, hunk or selected region.  Multiple files can be staged by selecting the filenames.  `S` stages all the **untracked files** and **Unstaged changes**.

`u` to unstage the current file, hunk or selected region in the **staged changes** section. `U` to unstage everything (from anywhere in the Magit Status buffer).

![Spacemacs Magit Status - staging files](/images/spacemacs-magit-status-staging-untracked-unstaged-staged-changes.png)

`TAB` to expand a section, eg. a file expands to git hunks, hunks expand to lines in the hunk.  `S-TAB` to collapse a section.

`[` to jump down from section to section, `]` to jump back up.

`v` to visually select one or more filenames or lines to stage or unstage.  Note: visual selection does not work over Git hunk boundaries when they are expanded.


## Magit staging and commit basics

{% youtube %}
https://youtu.be/natNUgnh_no
{% endyoutube %}
