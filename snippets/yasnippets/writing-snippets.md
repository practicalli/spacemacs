# Yasnippets Custom Snippets

Yasnippets are written in plain text, so are easy to write.  They support tab stops `$1`, placeholders `${1:defaultvalue}` and ensure indentation rules are applied `$<`

# How to write a snippet

The basic structure of a snippet template is:

```
#name : FullNameOfSnippet (not the alias name, the full name shows in autocompletion menu)
#contributor: John Stevenson <john@jr0cket.co.uk>
# --
Add the content you want to replace the snippet name with when it expands
```
The content can be anything, simple text or more usefully a code structure with placeholders


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
> `SPC x s` key bindings for yasnippet commands in Spacemacs.
> `SPC x s e` to edit an existing snippet (`yas/visit-snippet-file`).
> `SPC x s c` to create a snippet.
> `SPC x s t` to try a snippet.
> `SPC x s l` to load a snippet.
> `SPC x s L` to load a snippet and close the snippet buffer
