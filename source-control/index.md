# Source Control Introduction

Source control in Spacemacs supports Git repositories and services including GitHub, GitLab and Perforce.

Magit is a graphical Git client in Spacemacs that provides all the features of the Git command line client.

Highlight changes in file buffers and the local Git repository can be shown in the fringe.

![Spacemacs Source Control - full screen and refine-hunks](/images/spacemacs-magit-fullscreen-refine-hunks-example.png)


## Configure Spacemacs for Source Control

{% youtube %}
https://youtu.be/LoI5mlDv8gE
{% endyoutube %}


> #### Hint::github layer deprecated
> The `github` layer has been [marked as deprecated](https://github.com/syl20bnr/spacemacs/pull/15381) as almost all of its functionality is provided by the `git` layer.  Only `grep-mode` remains in the layer for previewing GitHub flavoured Markdown and that package should be moved to either the markdown layer or org layer (or possibly both) as an optional feature.
