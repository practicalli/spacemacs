# Source Control Introduction

Source control supports Git repositories and services including GitHub, GitLab along and Perforce.

Magit provides a graphical Git client in Spacemacs that provides all the features of the Git command line client.

Markers in the fringe show the changes between a file you are editing and the committed version of that file.

## Installing Source Control

Recommended layers to add for source control include:

* `git` - provides Magit, a feature rich git client that is easy to use
* `github` - accessing GitHub repositories
* `version-control` - general features including diff highlights in the window fringe

You must [configure Git](git-configuration.md) and [add SSH keys and a personal access token](source-code/github-configuration.md) to get the most out of Spacemacs source control with Git.

> #### Hint::github layer no longer includes gist support
> [gist.el](http://github.com/defunkt/gist.el) was removed from the GitHub layer on 2021-11-02 citing a broken and unmaintained package.  However, adding gist as an additonal package, using `dotspacemacs-additional-package (gist)` in .spacemacs seems to work.  Some [investigation](https://github.com/syl20bnr/spacemacs/issues/15183) is being done as to what features are no longer working with gist.el.

Configure Magit Forge to use services over GitHub and GitLab APIs, e.g. showing issues, creating pull requests, etc.

{% youtube %}
https://youtu.be/LoI5mlDv8gE
{% endyoutube %}
