# Source Control Introduction

Source control in Spacemacs supports Git repositories and services including GitHub, GitLab and Perforce.

Magit is a graphical Git client in Spacemacs that provides all the features of the Git command line client.

Highlight changes in file buffers and the local Git repository can be shown in the fringe.

![Spacemacs Source Control - full screen and refine-hunks](/images/spacemacs-magit-fullscreen-refine-hunks-example.png)


## Configure Spacemacs for Source Control

{% youtube %}
https://youtu.be/LoI5mlDv8gE
{% endyoutube %}


> #### Hint::github layer no longer includes gist support
> [gist.el](http://github.com/defunkt/gist.el) was removed from the GitHub layer on 2021-11-02 citing a broken and unmaintained package.
>
> github-clone removal is currently being discussed as it adds very little over Magit and requires a separate auth settings.
