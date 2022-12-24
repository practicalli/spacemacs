# Create snippets from existing text

`helm-yas-create-snippet-on-region` is an effective way to create snippets from existing text.

<p style="text-align:center">
<iframe width="560" height="315" src="https://www.youtube.com/embed/51as0UrssLM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</p>

Select a code block that you often create and using the yasnippets tools to create your own generic template

1. ++"v"++ for visual select and highlight the text for the snippet. Or use ++spc++ ++"v"++ and grow the selected region with ++"v"++
2. ++spc++ ++spc++ `helm-yas-create-snippet-on-region` creates a new snippet
3. Enter the name you wish to refer to this snippet
4. Select the major mode you want to add the snippet too (eg. clojure, markdown, html)
5. Edit the text and delete any text that is not required
6. Add tab points in the snippet if relevant
     - `$1` initial cursor position, `$2` next cursor position on tab, `$0` end cursor position.
7. ++ctrl+"c"++ ++ctrl+"t"++ calls `yas-tryout-snippet` to test the snippet has the right behaviour
8. ++ctrl+"c"++ ++ctrl+"c"++ calls `yas-load-snippet-buffer-and-close` to load the snippet into the specified major mode and closes the snippet buffer


## Edit an existing snippet

++spc++ ++spc++ `yas/visit-snippet-file` displays a helm popup listing snippets.

Enter a pattern to narrow the list or ++ctrl++ ++"j"++ and ++ctrl++ ++"k"++ to navigate the snippets. ++enter++ to select the snippet.

Edit the snippet and ++spc++ ++"f"++ ++"s"++ to save file

`C-c C-c` calls the function `yas-load-snippet-buffer-and-close` which loads the snippet into Spacemacs and closes the buffer.

`C-c C-t` calls `yas-tryout-snippet` to test the snippet and check the placement of your tab stops.
