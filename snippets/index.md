# Snippets

Spacemacs uses the yasnippet package to create and use code snippets.   time and avoids bugs by writing common code for you.

YASnippet comes with a number of mode-specific snippets that expand to anything from a simple text replacement to a code block structure that allows you to skip through parameters and other sections of the code block.  See YASnippet in action in this [Emacs Yasnippet video](https://www.youtube.com/watch?v=-4O-ZYjQxks).

To use a specific snippet simply type the alias and press `M-/`.

For example, in html-mode typing `div` and pressing `M-/` expands to `<div id="▮" class="▯">▯</div>` and places the cursor so you can type in the `id` name, then `TAB` to the `class` name, finally `TAB` to the contents of the div.

You can also combine yasnippets with autocompletion select snippets from the autocompletion menu.

Spacemacs has lots of snippets for most of the languages and modes it supports.  However, YASnippets also uses a simple template system in plain text, so its pretty easy to learn.  Lets look at how to add your own snippets with Spacemacs.

> In regular Emacs, yasnippets expand funciton is usually bound to `TAB`, but that key is used already in Spacemacs so `M-/` is used instead.
> If you just want text replacement you can also use [Emacs Abbrev mode](http://ergoemacs.org/emacs/emacs_abbrev_mode.html).


## Resources 

For more examples on where snippets are useful, read Sacha Chua's article on {how to make better use of Yasnippet in my Emacs workflow}(http://sachachua.com/blog/2015/01/thinking-make-better-use-yasnippet-emacs-workflow/)
