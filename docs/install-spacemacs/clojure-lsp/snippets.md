# Clojure LSP snippets

Clojure LSP contains several [:globe_with_meridians: built-in snippets](https://clojure-lsp.io/features/#snippets){target=_blank}. 

[:fontawesome-brands-github: practicalli/clojure-lsp-config repository](https://github.com/practicalli/clojure-lsp-config){target=_blank} enhances and extends the available snippets.

[:fontawesome-solid-book-open: Design of Practicalli Clojure LSP Snippets](/spacemacs/snippets/clojure-lsp/practicalli-snippets/){.md-button}


## Install Practicalli Clojure LSP snippets

[:fontawesome-brands-github: practicalli/clojure-lsp-config](https://github.com/practicalli/clojure-lsp-config) contains a wide range of snippets for Clojure LSP, some of which were contributed to the Clojure LSP project

=== "Free Desktop XDG Config"

    Clone via SSH
    ```shell
    git clone -o practicalli git@github.com:practicalli/clojure-lsp-config.git $XDG_CONFIG_HOME/clojure-lsp
    ```

    Clone via HTTPS
    ```shell
    git clone -o practicalli https://github.com/practicalli/clojure-lsp-config.git $XDG_CONFIG_HOME/clojure-lsp
    ```

=== "Classic Config"
    Clone via SSH
    ```shell
    git clone -o practicalli git@github.com:practicalli/clojure-lsp-config.git $HOME/.clojure-lsp
    ```

    Clone via HTTPS
    ```shell
    git clone -o practicalli https://github.com/practicalli/clojure-lsp-config.git $HOME/.clojure-lsp
    ```


Clojure LSP should automatically pick up the new changes without having to restart.

!!! HINT "Restart LSP Workspace"
    ++comma++ ++"b"++ ++"r"++ will restart the current LSP workspace in the event snippets are not showing


## Using snippets

Start typing the name of the snippet and it should appear in the auto-completion pop-up menu.  Matching entry names end with `(Snippet)`.

![Spacemacs Clojure LSP snippets - rich comment example](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-snippets-autocomplete-rich-comment-matches-light.png?raw=true#only-light)
![Spacemacs Clojure LSP snippets - rich comment example](https://github.com/practicalli/graphic-design/blob/live/editors/spacemacs/screenshots/spacemacs-snippets-autocomplete-rich-comment-matches-dark.png?raw=true#only-dark)

++return++ to expand the highlighted snipped

++tab++ / ++ctrl+"j"++ & ++ctrl+"k"++ or arrow-keys navigate the auto-completion pop-up list when there are multiple entries.


## Adding custom snippets

Edit the `config.edn` file.

The `:additional-snippets` key has a collection of hash-maps, with each hash-map representing a snippet.

`$n` represents a tab-stop, where the `TAB` key will jump throughout the snippet. `n` is an integer number to define the order of the tab-stops, e.g. `$1`, `$2`, $3.

`$0` is a special tab-stop that denotes the end of the tab-stops, ending the snippet interaction.

`${n:placeholder text}` allows text to be placed at the tab-stop to give an indication as to the value to be completed.  The placeholder text is automatically highlighted when tabbing into the tab-stop, so typing a new value replaces the placeholder text.

Highlighting and replacing the text does not work for the `$0` tab-stop, so placeholder text should not be used with this specific tab-stop.
