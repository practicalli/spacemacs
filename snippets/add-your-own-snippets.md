# Adding Custom Snippets
`helm-yas-create-snippet-on-region` is an effective way to create snippets in addition to those Spacemacs provides.

{% youtube %}
https://youtu.be/51as0UrssLM
{% endyoutube %}


## Create snippets
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



# How to write a snippet
The basic structure of a snippet template is:

```
#name : FullNameOfSnippet (not the alias name, the full name shows in autocompletion menu)
#contributor: John Stevenson <john@jr0cket.co.uk>
# --
Add the content you want to replace the snippet name with when it expands
```
The content can be anything, simple text or more usefully a code strucuture with placeholders


## Example: Simple text replacement
As Practicalli develops the book content its useful to highlight sections which are still work in progress.  Rather than type the same message over again,  a simple snippet called `wip` is created.

```
#name : WorkInProgress
#contributor: Practicalli <info@practical.li>
# --
> **Fixme** work in progress
```

When you expand this snippet with `M-/` then the snippet name is replaced by the content.

## Example: Using tab stops
[Yasnippets official snippets repository](https://github.com/AndreaCrotti/yasnippet-snippets) contains a snippet called `form` in the `html-mode`.  This expands into a html form and jumps from method, id, action and content.
```
#contributor : Practicalli <info@practical.li>
#name :<form method="..." id="..." action="..."></form>
# --
<form method="$1" id="$2" action="$3">
  $0
</form>
```

When the snippet is expanded, the snippet name is replaced by the content as usual but the cursor is placed at the first tab stop `$1`.  Each time you press `TAB` you move to the next tab stop.

`$0` is our exit point from the snippet, so pressing `TAB` reverts to the usual behaviour outside of YASnippet.


Further examples are covered in the [Emacs YASnippet video tutorial](https://www.youtube.com/watch?v=-4O-ZYjQxks) or [Adding YASnippets snippets](http://jotham-city.com/blog/2015/03/21/adding-yasnippets-snippets/) & [Snippet expansion with YASnippet](http://cupfullofcode.com/blog/2013/02/26/snippet-expansion-with-yasnippet/index.html)


# Testing your snippets
`M-x yas-tryout-snippet`  opens a new empty buffer in the appropriate major mode and inserts the snippet so you can then test it with `M-/`.

`M-x yas-load-snippet-buffer` to load the new snippet into the correct major mode.

`M-x yas-load-snippet-buffer-and-close` also loads the new snippet into the correct major mode and kills the snippet buffer (prompting to save first if necessary).

> #### Todo::PR for yasnippet key bindings
> `SPC x s` key bindings for yasnipet commands in Spacemacs.
> `SPC x s e` to edit an existing snippet (`yas/visit-snippet-file`).
> `SPC x s c` to create a snippet.
> `SPC x s t` to try a snippet.
> `SPC x s l` to load a snippet.
> `SPC x s L` to load a snippet and close the snippet buffer


## Summary
Find out more about YASnippets and autocompletion from the [Github repository for Spacemacs autocompletion layer](https://github.com/syl20bnr/spacemacs/tree/develop/layers/auto-completion).
