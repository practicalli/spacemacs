# Create snippets from existing text

`helm-yas-create-snippet-on-region` is an effective way to create snippets from existing text.

{% youtube %}
https://youtu.be/51as0UrssLM
{% endyoutube %}


Select a code block that you often create and using the yasnippets tools to create your own generic template

1. `v` for visual select and highlight the text for the snippet. Or use `SPC v` and grow the selected region
2. `SPC SPC helm-yas-create-snippet-on-region` creates a new snippet
3. Enter the name you wish to refer to this snippet
4. Select the major mode you want to add the snippet too (eg. clojure, markdown, html)
5. Edit the text and delete any text that is not required
6. Add tab points in the snippet if relevant
     - `$1` initial cursor position, `$2` next cursor position on tab, `$0` end cursor position.
7. `C-c C-t` calls `yas-tryout-snippet` to test the snippet has the right behaviour
8. ``C-c C-c` calls `yas-load-snippet-buffer-and-close` to load the snippet into the specified major mode and closes the snippet buffer


## Edit an existing snippet

`SPC SPC yas/visit-snippet-file` displays a helm popup listing snippets. Enter a pattern to narrow the list or `C-j` and `C-k` to navigate the snippets. `RET` to select the snippet.

Edit the snippet and `SPC f s` to save file

`C-c C-c` calls the function `yas-load-snippet-buffer-and-close` which loads the snippet into Spacemacs and closes the buffer.

`C-c C-t` calls `yas-tryout-snippet` to test the snippet and check the placement of your tab stops.
