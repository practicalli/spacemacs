## Silver Searcher - ag

Spacemacs comes configured to use [Silver Searcher](https://github.com/ggreer/the_silver_searcher) as the default search tool, but it is only used if it is available in the underlying operating system.

[Silver Searcher](https://github.com/ggreer/the_silver_searcher) make searching much faster as it skips file and directory patterns defined in `.gitignore` and `.htignore` files.  Additional patterns to be skipped can be defined in an `.ignore` file.

For Clojure and Clojurescript developers there are many files that you always want to ignore when searching your projects

* Compiled, compressed or minified files
* Patterns from your version control ignore files (eg. .gitignore)


## Spacemacs search tool configuration

The search tools that Spacemacs looks for is configured in `~/.spacemacs`

[![Spacemacs - dotspacemacs-search-tools](/images/spacemacs-dotspacemacs-search-tools.png)](/images/spacemacs-dotspacemacs-search-tools.png)


> ####Hint::
> The `grep` command is installed on all good operating systems so will be the search tool used if no others are found.


## References

* [`ag` man pages](http://manpages.ubuntu.com/manpages/zesty/man1/ag.1.html) (Ubuntu)
* [silversearcher-ag github project page](https://github.com/ggreer/the_silver_searcher)
