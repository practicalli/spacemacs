## Silver Searcher - ag

Spacemacs comes configured to use [Silver Searcher](https://github.com/ggreer/the_silver_searcher){target=_blank} as a search tool, but only if it is on the execution `PATH` of the operating system.

[Silver Searcher](https://github.com/ggreer/the_silver_searcher){target=_blank} make searching much faster as it skips file and directory patterns defined in `.gitignore`.  Additional patterns to be skipped can be defined in an `.ignore` file.

For Clojure and Clojurescript developers there are many files that you always want to ignore when searching your projects

* Compiled, compressed or minified files
* Patterns from your version control ignore files (eg. `.gitignore`)


## Spacemacs search tool configuration

The search tools that Spacemacs looks for is configured in `~/.spacemacs`

[![Spacemacs - dotspacemacs-search-tools](/images/spacemacs-dotspacemacs-search-tools.png)](/images/spacemacs-dotspacemacs-search-tools.png)


## References

* [`ag` man pages](http://manpages.ubuntu.com/manpages/zesty/man1/ag.1.html){target=_blank} (Ubuntu)
* [silversearcher-ag github project page](https://github.com/ggreer/the_silver_searcher){target=_blank}
