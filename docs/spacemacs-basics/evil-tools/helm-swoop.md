# Helm-swoop

[Helm-swoop](https://develop.spacemacs.org/layers/+completion/helm/README.html#helm-swoop) provides an easy way to navigate through code, based on search results

Search a buffer (Clojure namespace) or project and use the results to navigate to the locations in the code for each match found.

`SPC s s` to search using currently selected region, or prompts for search text if nothing selected.  `j` and `k` to navigate the search results and show the line in the file the search corresponds to.

`SPC s S` assumes word under cursor is the symbol you wish to search for.

helm-swoop is also available in the [symbol highlight transient menu](/navigating-code/names-symbols.md).


| Keybindings | Description                  |
|-------------|------------------------------|
| `SPC s C`   | clear helm-swoop own cache   |
| `SPC s s`   | execute helm-swoop           |
| `SPC s S`   | execute helm-multi-swoop     |
| `SPC s C-s` | execute helm-multi-swoop-all |

For example, navigate to a function definition and all the places that function is called in a project using helm-multi-swoop.

![Helm multi-swoop](https://raw.githubusercontent.com/ShingoFukuyama/spacemacshttps://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/master/helm-multi-swoop.gif)

> #### Hint::Refactor code
> [Refactor section](/refactor/) provides examples of using helm-ag, helm-swoop, iedit, narrowing and clj-refactor.
