# Searching Projects

`SPC s p` (`helm-swoop`) enables a a fuzzy logic search through the content of all the files in the current project.  A helm pop-up displays, typing a pattern shows matching lines from all the files in the project.

Use `C-j` and `C-k` to move down and up through the search results.

`RET` selects the search result and shows the file and line in the current buffer.

![Spacemacs Helm-Ag ripgrep pattern search results](/images/spacemacs-helm-ag-ripgrep-pattern-search.png)

## Search tool binary
Searching requires an external tool to be available on your system PATH. [Ripgrep](https://github.com/BurntSushi/ripgrep) is the recommended search tool, although [silver searcher (ag)](/alternative-tooling/silversearcher-ag.md) is a viable alternative.  Using `grep` is noticeably slower and has fewer options for searching.

* [Ripgrep install instructions](https://github.com/BurntSushi/ripgrep#installation)
* [silver searcher (ag)](/alternative-tooling/silversearcher-ag.md)


## Searching specific files
Include or exclude specific files by their names or filename extensions.

Use the `-g` option for a filename to search (globbing), or `-g!` for a filename to ignore.

`-g*.clj map` shows only results of searching for `map` from files ending in `.clj`

![Spacemacs Helm-Ag ripgrep globbing .clj files](/images/spacemacs-helm-ag-ripgrep-globbing-clj.png)

`-g!*.md map` will search for `map` for all files except those ending in `.md`

![Spacemacs Helm-Ag ripgrep globbing not .md files](/images/spacemacs-heml-ag-ripgrep-globbing-not-md.png)

## Example search patterns
Additional search patterns that work with `ripgrep` or `ag`.

`-G*.cljs -w time` - search for the word "time" in all `.cljs` files

`-tclojure time` - search for "time" in all `.{clj,cljs,cljc}` files

`uno\ due\ tre` - search for the string "uno duo tre"

`-C5 foo` - search for "foo" but show 5 lines of context before and after the match

`(?:^|[^\w-])time(?:[^\w-]|$)` - search for "time" even in kebab-case words. i.e. search for the full word "time" including "-" to be a word character

## References
* https://github.com/BurntSushi/ripgrep
* https://blog.burntsushi.net/ripgrep/
