# Tag a commit
Tag a commit adds a label to a specific commit, often used to identify a significant event, e.g. a specific release.

> #### TODO::work in progress, sorry
> Pull requests are welcome


## Tagging via the Git log
The simplest way to tag an existing commit is to use the Git log.

`SPC g s` to open Magit status

`l l` to show the log, using `j` `k` to navigate down and up the log history

`t t` to tag the current commit


## Tagging via Magit status

`SPC g s`

`t` to open the tag menu

`t` to create the tag

## Tag options
Tags can be a commit tag or an annotation on an existing commit


## Pushing tags

`P` to open the push menu

`t` to push all tags, `T` to push a tag

`p` to push to the default push repository, `e` to select a repository to push the tag too.
