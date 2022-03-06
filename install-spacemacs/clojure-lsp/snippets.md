# Clojure LSP snippets

Clojure LSP contains several [built-in snippets](https://clojure-lsp.io/features/#snippets). The [practicalli/clojure-lsp-config repository](https://github.com/practicalli/clojure-lsp-config) enhances and extends the available snippets, helping create code that documents its purpose clearly.

**[Each snippet is described in the Clojure LSP reference](https://practical.li/spacemacs/snippets/clojure-lsp/practicalli-snippets.html)**, along with the configuration for each snippet.


## Install Practicalli Clojure LSP snippets

Clone [practicalli/clojure-lsp-config](https://github.com/practicalli/clojure-lsp-config) to `$XDG_CONFIG_HOME/clojure-lsp/` or if `XDG_CONFIG_HOME` environment variable is not set, then clone to `$HOME/.lsp/`.  Or simply copy the desired snippets to the `config.edn` file.

Clojure LSP should automatically pick up the new changes without having to restart.

> #### Hint::Restart LSP Workspace
> `, w r` will restart the current LSP workflow in the unlikely event the snippets are not showing

## Using snippets

Start typing the name of the snippet and it should appear in the auto-completion pop-up menu.  Matching entry names end with `(Snippet)`.

![Spacemacs Clojure LSP snippets - comment example](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/screenshots/spacemacs-clojure-lsp-snippets-autocomplete-example-comment.png)

`RET` to expand the highlighted snipped

`TAB`, `C-j` & `C-k`, or arrow-keys navigate the auto-completion pop-up list when there are multiple entries.



## Adding custom snippets

Edit the `config.edn` file.

The `:additional-snippets` key has a collection of hash-maps, with each hash-map representing a snippet.

`$n` represents a tab-stop, where the `TAB` key will jump throughout the snippet. `n` is an integer number to define the order of the tab-stops, e.g. `$1`, `$2`, $3.

`$0` is a special tab-stop that denotes the end of the tab-stops, ending the snippet interaction.

`${n:placeholder text}` allows text to be placed at the tab-stop to give an indication as to the value to be completed.  The placeholder text is automatically highlighted when tabbing into the tab-stop, so typing a new value replaces the placeholder text.

Highlighting and replacing the text does not work for the `$0` tab-stop, so placeholder text should not be used with this specific tab-stop.

> #### Hint::Placeholder text not replaced in final tab stop
> practicalli/clojure-lsp-snippets over-rides some existing built-in snippets at they include placeholder text in the final, S0, location.  Practicalli snippets either replaces the final tab-stop with a consecutively numbered tab stop, or removes the placeholder text.
