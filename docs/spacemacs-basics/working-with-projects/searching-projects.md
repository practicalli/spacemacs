# Searching Projects

`SPC /` and `SPC s p` (`spacemacs/helm-project-smart-do-search`) enables a a fuzzy logic search through the content of all the files in the current project.  A helm pop-up displays, typing a pattern shows matching lines from all the files in the project.

Use `C-j` and `C-k` to move down and up through the search results.

`RET` selects the search result and shows the file and line in the current buffer.

`SPC s l` will repeat the last search

`M-n` and `M-p` will scroll through the search patterns whenever the search pop-up window is open

![Spacemacs Helm-Ag ripgrep pattern search results](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/screenshots/spacemacs-helm-ag-ripgrep-pattern-search.png)

!!! HINT "Replacing text across a project"
    Use search results to [replace text across a project](/spacemacs/spacemacs-basics/evil-tools/replacing-text-across-projects.md).


## Open files from search results

With a search open, `C-c C-f` enables `helm-follow`.  When moving through results with `C-j` and `C-k` the corresponding file is opened in the current buffer.

Set `helm-follow-mode-persistent` to true in `.spacemacs` to remember the use of `C-c C-f` follow mode for helm actions.

```elisp
     (helm :variables
           helm-follow-mode-persistent t)
```


## Search tool binary

Searching requires an external tool to be available on your system PATH. [:globe_with_meridians: Ripgrep](https://github.com/BurntSushi/ripgrep) is the recommended search tool, although [silver searcher (ag)](/spacemacs/alternative-tooling/silversearcher-ag.md) is a viable alternative.  Using `grep` is noticeably slower and has fewer options for searching.

- [:globe_with_meridians: Ripgrep install instructions](https://github.com/BurntSushi/ripgrep#installation)
- [:globe_with_meridians: silver searcher (ag)](/alternative-tooling/silversearcher-ag.md)


## Ripgrep search tool options

Option flags can be passed to the search tool binary to tailor the results returned in the helm-ag pop-up window.  The option flags can be used before or after the search pattern.

`SPC h m rg` shows the man page for ripgrep which explains the options of that search tool.  Replace `rg` with the command line name of the search tool binary installed.

Including options without their correct argument will show a warning, e.g. the `-g` option without a glob pattern or `-A` without a number.  Once the option has a valid value the error should be replaced by search results.

![Spacemacs Helm-Ag globbing option error without pattern](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/screenshots/spacemacs-project-wide-search-options-error.png)


### Searching specific files

Include or exclude specific files by their names or filename extensions.

Use the `-g` option for a filename to search (globbing), or `-g!` for a filename to ignore.

`-g*.clj map` shows only results of searching for `map` from files ending in `.clj`

![Spacemacs Helm-Ag ripgrep globbing .clj files](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/screenshots/spacemacs-helm-ag-ripgrep-globbing-clj.png)

`-g!*.md map` will search for `map` for all files except those ending in `.md`

![Spacemacs Helm-Ag ripgrep globbing not .md files](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/screenshots/spacemacs-helm-ag-ripgrep-globbing-not-md.png)


### Showing more lines for each match

`-A` option for ripgrep is used to show a number of lines after each match of the pattern.  `-A4` will show the 4 additional lines after the line containing a matching pattern.

If there are multiple pattern matches in the same file within the scope of extra lines, then contiguous lines are shown with 4 lines after the final pattern line.

`SPC /` with a pattern of `-A4 layout` will show each line containing the pattern layout and 4 lines after it.

![Spacemacs Helm-Ag globbing option error without pattern](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/screenshots/spacemacs-search-options-additional-lines.png)

This option can also be combined with the `-g` option above.


### Example search patterns

Additional search patterns that work with `ripgrep` or `ag`.

`-G*time` - search for the word "time" in all files

`-G*time -g*.clj` - search for the word "time" in `.clj` files only

`-tclojure time` - search for "time" in all `.{clj,cljs,cljc}` files

`uno\ duo\ tre` - search for the string "uno duo tre"

`-C5 foo` - search for "foo" but show 5 lines of context before and after the match

`(?:^|[^\w-])time(?:[^\w-]|$)` - search for "time" even in kebab-case words. i.e. search for the full word "time" including "-" to be a word character

Ripgrep documentation has many [regular expression examples](https://docs.rs/regex/1.3.6/regex/#syntax)


### Searching hidden files

Searching a project using `SPC /` and `SPC s p` will ignore hidden files, those that start with `.`

`-- --hidden` or `-- -uu` after the search pattern to include hidden files in the search

For example, to search for the pattern `scissors`

```
scissors -- --hidden
```

!!! HINT "Searching hidden files may slow search results"


### Ripgrep configuration and arguments

Define an environment variable called `RIPGREP_CONFIG_PATH` set to the file name and path

```
export RIPGREP_CONFIG_PATH=~/.config/ripgrep.config
```

| Argument        | Description                                        |
|-----------------|----------------------------------------------------|
| `-u`            | don't respect `.gitignore` or `.ignore` files      |
| `-uu`           | same as -u and show hidden files                   |
| `-uuu`          | same as -uu and search binary files                |
| `--max-columns` | Maximum number of columns (Spacemacs default: 150) |
| `--glob=!git/*` | glob patters, `!` excluded                         |
| `--smart-case`  | Ignore case                                        |

- [Ripgrep configuration file](https://github.com/BurntSushi/ripgrep/blob/master/GUIDE.md#configuration-file)


## References

- https://github.com/BurntSushi/ripgrep
- https://blog.burntsushi.net/ripgrep/
