# Source Control Introduction

Source control supports Git repositories and services including GitHub, GitLab along and Perforce.

Magit provides a graphical Git client in Spacemacs that provides all the features of the Git command line client.

Markers in the fringe show the changes between a file you are editing and the committed version of that file.

## Installing Source Control ##

Recommended layers to add for source control include:

* `git` - provides Magit, a feature rich git client that is easy to use
* `github` - accessing GitHub repositories and Gists
* `version-control` - general features including diff highlights in the window fringe

You must [configure Git](git-configuraiton.html) and [add SSH keys and a personal access token](source-code/github-configuration.md) to get the most out of Spacemacs source control with Git.

Configure Magit Forge to use services over GitHub and GitLab APIs, e.g. showing issues, creating pull requests, etc.

{% youtube %}
https://youtu.be/LoI5mlDv8gE
{% endyoutube %}
