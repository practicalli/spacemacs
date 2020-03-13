# Add your own Snippets

Spacemacs has lots of snippets for most of the languages and modes it supports.  However, YASnippets also uses a simple template system in plain text, so its pretty easy to learn.  Lets look at how to add your own snippets with Spacemacs.

## automatically create snippets

Select a code block that you often create and using the yasnippets tools to create your own generic template

1. Press `v` for visual mode and move the cursor around to select the text, or `SPC v` to grow the selected region
2. `SPC SPC helm-yas-create-snippet-on-region` creates a new snippet
3. Enter the name you wish to refer to this snippet
4. Select the major mode you want to add the snippet too (eg. clojure, markdown, html)
5. Edit the text and delete any text that is not required
6. Add tab points in the snippet if relevant
     - `$1` initial cursor position, `$2` next cursor position on tab, `$0` end cursor position.
7. `SPC SPC yas-tryout-snippet` to test the snippet has the right behaviour
8. `SPC SPC yas-load-snippet-buffer` to load the snippet into the defined mode


## Manually adding snippets

The easiest place to add your own snippet definitions is in the `~/.emacs.d/private/snippets` directory.  Under this directory structure you should create a folder named after the relevant mode for your snippets, eg `markdown-mode`.  Inside this mode folder, create files whos names are based on the snippet alias you wish.

So for a work in progress snipped called `wip` in markdown mode I created `~/.emacs.d/private/snippets/markdown-mode/wip` file.

You need to load this new snippet into Spacemacs by either restarting or using the command `M-x yas-load-snippet-buffer` command in the buffer of the new snippet you have just written.  Ths snippet with then work within any markdown mode buffer.

## Managing your snippets

Although the private snippets directory is easy to use, it is not under version control.  So although its not over-ridden by Spacemacs it also means your private snippets are not backed up anywhere.

If you use the `~/.spacemacs.d/snippets/modename-mode/` directory structure for your snippets then you can version them with Git or similar versioning tools.


# How to write a snippet

Each snippet template is contained in its own file, named after the alias of the snippet.  So a snippet called `wip` will be in a filename wip, in a directory named after the relevant Emacs mode.

The basic structure of a snippet template is:

```
#name : FullNameOfSnippet (not the alias name, the full name shows in autocompletion menu)
#contributor: John Stevenson <john@jr0cket.co.uk>
# --
Add the content you want to replace the snippet name with when it expands
```
The content can be anything, simple text or more usefully a code strucuture with placeholders


## Example: Simple text replacement

I use markdown mode for writing a lot of content, especially for technical workshops.  As I am developing these workshops its useful to highlight which sections are still work in progress.  Rather than type the common message I use, I've created a simple snippet called `wip`.

```
#name : WorkInProgress
#contributor: John Stevenson <john@jr0cket.co.uk>
# --
> **Fixme** work in progress
```

When you expand this snippet with `M-/` then the snippet name is replaced by the content.

## Example: Using tab stops

Lets look at an existing snippet called `form` in the `html-mode`.  This expands into a html form, but also helps you jump from method, id, action and content.
```
#contributor : Jimmy Wu <frozenthrone88@gmail.com>
#name :<form method="..." id="..." action="..."></form>
# --
<form method="$1" id="$2" action="$3">
  $0
</form>
```

This snippet is the same as the simpler example, except we have added **tab stops** using the `$` sign and a number.  When you expand this snippet, the snippet name is replaced by the content as usual but the cursor is placed at the first tab stop `$1`.  Each time you press `TAB` you move to the next tab stop.

`$0` is our exit point from the snippet, so pressing `TAB` reverts to the usual behaviour outside of YASnippet.

For more examples talk a look at the [Emacs YASnippet video tutorial](https://www.youtube.com/watch?v=-4O-ZYjQxks) or the blogs: [Adding YASnippets snippets](http://jotham-city.com/blog/2015/03/21/adding-yasnippets-snippets/) & [Snippet expansion with YASnippet](http://cupfullofcode.com/blog/2013/02/26/snippet-expansion-with-yasnippet/index.html)


# Testing your snippets

Once you have written your snippet, you can quickly test it using `M-x yas-tryout-snippet`.  This opens a new empty buffer in the appropriate major mode and inserts the snippet so you can then test it with `M-/`.

If you just want to try the snippet in an existing buffer, then use `M-x yas-load-snippet-buffer` to load this new snippet into the correct mode.  `M-x yas-load-snippet-buffer` does exactly the same except it kills the snippet buffer (prompting to save first if neccessary).

> There are no default keybindings for these commands in Spacemacs, so you could create a binding under `C-o`, for example `C-o C-s t` to try a snippet and `C-o C-s l` to load a snippet.

# Adding yas-snippets to autocompletion in Spacemacs

By adding the `autocompletion` layer in Spacemacs the YASnippets can be shown in the autocompletion menu as you type.

By default, snippets are not shown in the auto-completion popup, so set the variable `auto-completion-enable-snippets-in-popup` to `t`.

```elisp
(setq-default dotspacemacs-configuration-layers
              '((auto-completion :variables
                                 auto-completion-enable-snippets-in-popup t)))
```

# Summary

Find out more about YASnippets and autocompletion from the [Github repository for Spacemacs autocompletion layer](https://github.com/syl20bnr/spacemacs/tree/master/layers/auto-completion).  Also take a look at [Writing Snippets](https://gist.github.com/kazu634/290872) from [kazu634](https://gist.github.com/kazu634).
