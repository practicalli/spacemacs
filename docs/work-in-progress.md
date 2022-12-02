# Work in Progress


## comments


## lisp mode - structural editing

Create a new separate expression either side of the current expression

`SPC k (` - create a new empty expression, `()`, before the current expression
`SPC k )` - create a new empty expression, `()`, after the current expression


## clojure refactor - thread macro

The more nested expressions and expression has, then the trickier it can be for the developer to understand what it is doing.

Using the thread macro you can organise your nested expressions sequentially, which can aid in understanding

clj-refactor has functions to convert an expression to use a thread-first or thread-last macro

```clojure
(defn make-chips [potatoes]
  (bag-up (drain (fry (slice potatoes)))))
```

Place the cursor on the expression starting with `bag-up` and press `, r t f` to change the expression to use the thread first macro

(defn make-chips [potatoes]
  (-> potatoes
      slice
      fry
      drain
      bag-up))



## Vim text tips

insert multiple characters using a combination of a number followed by `i`.  For example, to add a line of ; character, type the number of characters to insert, press `i` to enter insert mode, press the character you want to repeat, then escape back to vim normal mode, `ESC` or `fd`

`42 i ; ESC`
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


`M-;` - Start an empty line with a comment `;;` or add a comment at the end of the line `;`

## Magit tips

Commit Amend will allow you to edit the commit message of the latest commit (hopefully you haven't pushed this commit to a shared repository).

Open Magit status `SPC g s` then `c` for commit and `a` for amend.  Edit the commit message and make it even better.  Then create the new commit using `, ,` or `C-c C-c`.

If you change your mind, cancel the amend using `, k` or `C-c C-k`

## eshell fun

Did you know, you can type simple elisp expressions in eshell without any parentheses or quotes (for string args)

open eshell and try:
`setq line-spacing 100` or
`list-buffers t` or
`org-agenda DONE T`



## functional callisthenics in Clojure

keep side effects at the top level (api calls, db calls)

no mutable state (except where its necessary)
functions with only one argument (well only if its a collection)
implicit recursion over explicit recursion
tail recursion
everything named
use intermediate values (local name bindings)
dont abbreviate



## Configure autocomplete to use a key or a delay

Sometimes autocomplete is a bit slow in Clojure.

is it possible to trigger the autocomplete popup with a key ? i find the popup useful some of the time, but having it trigger automatically drives me nuts...

try adjusting either

`auto-completion-idle-delay`
`company-idle-delay`

- i'd much rather have the popup be manual though - if i want auto-complete then i know and want it quickly, if i don't want it i don't ever want it to appear
`company-auto-complete`



## Ideas for intro to Spacemacs

http://www.jesshamrick.com/2012/09/10/absolute-beginners-guide-to-emacs/
https://github.com/syl20bnr/spacemacs/blob/develop/doc/BEGINNERS_TUTORIAL.org
https://www.gnu.org/software/emacs/tour/


## surround text

https://github.com/emacs-evil/evil-surround


### Visual mode substitute approach with S

1. In normal mode, select the test you wish to surround.
2. `S` cuts the text and puts you in insert mode
3. type the opening character that will surround the text (or open & close characters if not using smartparens)
4. `df` or `ESC` to switch back to normal mode
5. `p` to paste the text that was originally highlighted


### visual mode with gS (normal mode)

1. select the text to surround
2. `gS` prompts to type in the character to use for the surround (surround-region)
3. insets opening & closing characters, however inserts a new lines before and after the selected text


### insert mode

* vim video tutorials - http://derekwyatt.org/vim/tutorials/


### Change surrounding

You can change a surrounding with cs<old-textobject><new-textobject>.

### Delete surrounding

You can delete a surrounding with ds<textobject>.



## structural editing

`C-M k` - kills sexp / balanced expression
`C-M SPC` - selects sexp / balanced expression

# autocompletion for external libraries

if you wish autocompletion to work for external libraries (and jumping to definition) you should make sure that the libraries in question have been added to the repl.

Libraries get added when you
* evaluate the whole buffer in a namespace
* evaluate the namespace expression
* evaluate a `require` or `use` expression with that library in the REPL (either REPL buffer or in a file).

# vim stuff for undo-tree

<p>On <code>Vim</code> editing style, naturally:</p>

<ul>
<li><p><kbd>j</kbd> and <kbd>k</kbd> to navigate through the tree up and down.</p></li>
<li><p><kbd>h</kbd> and <kbd>l</kbd> to switch branches.</p></li>
</ul>

<p>When using <code>Emacs</code> editing style:</p>

<ul>
<li><p><kbd>n</kbd> and <kbd>p</kbd> to navigate through the tree up and down.</p></li>
<li><p><kbd>f</kbd> and <kbd>b</kbd> to switch branches.</p></li>
</ul>

<p>On <code>both</code> editing styles:</p>

<ul>
<li><p><kbd>q</kbd> or <kbd>C-g</kbd> to quit and leave in current state.</p></li>
<li><p><kbd>C-q</kbd> to abort changes.</p></li>
</ul>

<p><strong>Note</strong>: <em>Undo-Tree</em> is a very powerful package and has lots of useful/cool features that are comprehensively explained only in its source code embedded documentation, which could be visualized by calling:</p>

<pre><code>M-x finder-commentary &lt;RET&gt;
</code></pre>

<p>then type:</p>

<pre><code>undo-tree <kbd>RET</kbd>;
</code></pre>

<p>Or take a look at the Online <a href="https://elpa.gnu.org/packages/undo-tree.html" rel="nofollow noreferrer"><strong>Undo-tree documentation</strong></a></p>

<hr>

<p>Other useful commands:</p>

<ul>
<li><p><kbd>d</kbd> Toggle diff display.</p></li>
<li><p><kbd>t</kbd> Toggle display of time-stamps.</p></li>
<li><p><kbd>s</kbd> Toggle keyboard selection mode.</p></li>
<li><p><kbd>,</kbd> and <kbd>&lt;</kbd> Scroll left</p></li>
<li><p><kbd>.</kbd> and <kbd>></kbd> Scroll right</p></li>
</ul>
    </div>


## joining lines

Perform a visual selection and then press J

## undo tree

`C-x u` shows visual undo tree

## Vim mode

https://simpletutorials.com/c/3036/Spacemacs+%28Vim+mode%29+Cheatsheet

### typical copy / cut and paste approach

in normal mode, select the region you want to cut, this puts you into select mode.  Then press `d` to cut (delete) the selected text or `y` to copy (yank into kill ring).  This will put you back into normal mode.

Move the cursor to where you want to paste the text with `p`

### normal & insert mode
`C-j` - insert new line after cursor

### normal mode
`C-k` delete

## Spacemacs cache

Spacemacs saves the bookmarks in `~/.emacs.d/.cache/bookmarks`, and the recent files in `~/.emacs.d/.cache/recentf`. You can copy these two files somewhere outside of ~/.emacs.d, and copy them back in after re-installing.

In fact, there might be more files in ~/.emacs.d/.cache that you'd like to save. I suggest backing up the entire ~/.emacs.d/.cache and restoring what you miss after re-installation.

For completeness, I'll mention that the locations of these two files are controlled by the variables bookmark-default-file and recentf-save-file.


## from spacemacs gitter channel

​C-S-backspace -- kill-whole-line


Org layer.

(org :variables
      org-enable-reveal-js-support t
      org-enable-github-support t
      org-enable-bootstrap-support t )


Search highlighting




SPC t h s is bound to spacemacs/toggle-syntax-highlighting. the / evil-ex-search-forward highlighting seems to be visible


removed with SPC s c  spacemacs/evil-search-clear-highlight


here's also SPC t I which enables aggressive-indent, it indents automatically.


Indenting text in vim mode
https://stackoverflow.com/questions/235839/indent-multiple-lines-quickly-in-vi


Indentation
=    Indent according to rules

==   indent current line
<<   move current line indent to left

Change surrounding symbols
c s ' "


Evil undo delete should be finer

evil-want-fine-undo


# Evil ex commands - the : commands like q for quit

https://gist.github.com/agzam/acd3b5e311f8f7e87e21b550856f65e1


face for the current symbol when automatic-highlight is on? SPC t h a?
`ahs-plugin-whole-buffer-face`




Deleting structural text in vim

For vanilla evil-mode, `di[` will do it, ie `delete-in-[`.

With evil-cleverparens you could also use `dif` since cleverparens adds the `f` (form) text-object.

Well, for deleting in parens it would be `di(`. Similarly you can do `delete-in-` with `{`, `"`, and some others.

Similarly `da[` (`delete-around-[`) does the same thing, but includes the brackets.


If you haven't read this, it was something that fundamentally changed how I vim. Just a really key insight.
https://yanpritzker.com/learn-to-speak-vim-verbs-nouns-and-modifiers-d7bfed1f6b2d




Buffer management in evil mode


# Source code - Clojure

Some key sequences I use all the time:
- `SPC TAB` is like `:bp` in vim: switch to the previous buffer.
- `SPC b b` - switch to a buffer by fuzzy matching on the name.
- `SPC p f` - find a file with fuzzy matching in the current project.
- `:A` - switch between test and implementation (in some languages anyway).

Also `SPC b d` deletes the current buffer, which keeps the set of buffers you're matching against with `SPC b b` manageable. Similarly, `SPC p k` deletes all buffers for the current project. Although, you probably don't need to be as concerned about open buffers as I am. :-)

`:A` did seem to work for me in clojure. Ended up finding out that `SPC p T` is `projectile-find-test-file` and `SPC p a` is `projectile-find-other-file` (which goes to the src file if you're in a test file)

actually `SPC p a` toggles between `src` and `test` file



## Modeline & powerline

`SPC t m t` - toggle mode line

There are other modeline toggles under `SPC t m` that you might explore.

change the separator, in this example removing the separator by setting the value to `nil`
```
(setq powerline-default-separator nil
        powerline-center-theme t)
```


## copy from helm buffer

C-c C-i


navigate helm prompt C-<left-arrow> C-<right-arrow>

navigate up helm prompt C-h (deleting path by file or directory name)


https://sprungcanary.net/posts-output/2015-11-29-a-repl-story/


## Git stuff

Use Spacemacs as the $EDITOR for git commits?

Spacemacs can be used as the $EDITOR (or $GIT_EDITOR) for editing git commits messages. To enable this you have to add the following line to your dotspacemacs/user-config:

```lisp
(global-git-commit-mode t)
```


## Org-mode
http://spacemacs.org/layers/+emacs/org/README.html

* Pomodoro
https://github.com/lolownia/org-pomodoro

https://ontologicalblog.wordpress.com/2016/10/14/an-absolute-beginners-guide-to-spacemacs-for-academic-writing/

* Agenda files

```elisp
(with-eval-after-load 'org (setq org-agenda-files
                              '("c:/Users/USERNAME/Dropbox/Notes/")))
```

## working with buffers

When you want a window to stay put, use `SPC w t`. It calls the function `spacemacs/toggle-current-window-dedication`.
I use it to make sure REPL and shell windows don't accidentally get taken over by new buffers.


When I start up the spacemacs buffer shows a list of recent files. Is there a command to open everything in that list?

quicknir @quicknir 02:25
`SPC f r`
files recent

so, with helm you can mark multiple things and act on all of them

Use `C-j` and `C-k` to move the cursor up and down in the list of recent files.

Use `C-SPC` to mark individual files or mark every listed file with `M-a` and then hitting enter should open everything


## Scrolling In vim mode
`C-y` - scroll down the buffer so you can see more text at the top of the buffer
`C-e` - scroll up the buffer so you can see more text further down
`C-l` - toggle between centering the current line, moving the current line to the top of the buffer and the original position


? How to jump to a line number or jump the cursor a number of lines

## Manipulating case of text

Case Conversion Commands

Emacs has commands for converting either a single word or any arbitrary range of text to upper case or to lower case.

M-l

    Convert following word to lower case (downcase-word).
M-u

    Convert following word to upper case (upcase-word).
M-c

    Capitalize the following word (capitalize-word).
C-x C-l

    Convert region to lower case (downcase-region).
C-x C-u

    Convert region to upper case (upcase-region).

M-l (downcase-word) converts the word after point to lower case, moving past it. Thus, repeating M-l converts successive words. M-u (upcase-word) converts to all capitals instead, while M-c (capitalize-word) puts the first letter of the word into upper case and the rest into lower case. All these commands convert several words at once if given an argument. They are especially convenient for converting a large amount of text from all upper case to mixed case, because you can move through the text using M-l, M-u or M-c on each word as appropriate, occasionally using M-f instead to skip a word.

When given a negative argument, the word case conversion commands apply to the appropriate number of words before point, but do not move point. This is convenient when you have just typed a word in the wrong case: you can give the case conversion command and continue typing.

If a word case conversion command is given in the middle of a word, it applies only to the part of the word which follows point. (This is comparable to what M-d (kill-word) does.) With a negative argument, case conversion applies only to the part of the word before point.

The other case conversion commands are C-x C-u (upcase-region) and C-x C-l (downcase-region), which convert everything between point and mark to the specified case. Point and mark do not move.

The region case conversion commands upcase-region and downcase-region are normally disabled. This means that they ask for confirmation if you try to use them. When you confirm, you may enable the command, which means it will not ask for confirmation again. See Disabling.
c



# Terminology

Functions

Function refers to the thing that you are calling when you hit a key or series of keys. For example j in normal mode is mapped to the function evil-next-line. In elisp these usually look like strings of hyphenated words. spc spc opens helm M-x and lets you search for functions by name and execute them. Note that functions may also be refereed to as sexps (symbolic expressions).
Buffers

Buffers are like tabs in your browser. You open them from files on your computer instead of from the internet, and they stay open until you close them. Hit spc b b to see a searchable list of your open buffers, and recently opened buffers. spc b B opens a list of buffers organized by major mode. spc b d deletes the buffer you are currently in. As you can most the spc b commands are related to buffers. But buffers arent necessarily just files you open, they can also be generated by emacs (like the helm mini buffer (spc b b) you use to search buffers) to do useful things.
The Mode Line

At the bottom of the window, you will see the mode line. Its got some handy information in it. From left to right it shows you:

    Your window number. The color indicates what evil mode you are in (normal, insert, etc)
    A little * indicator if your file has been modified since it has been saved.
    Buffer size.
    Buffer name (same as file name if you have opened from file).
    Major mode.
    Minor modes.

On the far right is info about where you are in a buffer. Move around with hjkl and watch it if you dont get it at first.
Major Modes

This is how emacs organizes important sets of functionality. Each buffer will have one major mode at a time. It can customize anything about emacs so that it suits the buffer you are working with. There is a mode for editing C#, a mode for editing latex, a mode for viewing files (dired-mode), a mode for searching (helm-major-mode), a mode for emulating a terminal (term-mode). You can see what major mode you are in at the bottom of each buffer in your mode line. Usually this is automatically set depending on which buffer you are in. Major modes specific functions are on the , key (also spc m).
Minor Modes

Minor modes are smaller sets of custom behavior that can work together. A major mode will automatically set a bunch of relevant minor modes, but you can toggle them with spc t. For example spc t n toggles a minor mode for line numbers. You can hover over the symbols in the modeline with your mouse to see what minor mode each represents. spc h d m (help describe mode) opens a comprehensive list of your active minor modes. Move your cursor to one and hit enter to get more information.

Side Note: The information opens in a split buffer titled *help*. Many of these buffers that are meant to be temporary can be closed quickly with q.
Layers

Everything so far (except specific key bindings) applies to emacs in general. Layers, however, are a spacemacs specific term. Layers are meant to be a simple way for you to customize your configuration by adding only one line to your .spacemacs file. See the list to see what are available. Check out the latex layer for example.
The .spacemacs file

## Why Vim ?

### Positives

Hands centered on the center of the keyboard

Rarely have to use a chorded keybinding

Keeps strain on hands to a minimum

* Fast Navigation - Moving around inside files in most windows editors involves a lot of home/end/up/down arrow key. Having search and tag based navigation makes getting around within a file much faster. Finding the right file is also easier with the command plugin, influenced by Textmate on the Mac, this fuzzy file finder is not typically available in traditional windows editors (last time I looked)


# ranger

A fast way to browse files and directories

use vim keybindings to navigate

j / k -- up / down current directory
l -- into the currently selected directory
h -- up to parent directory
q -- quit


some configuration to consider

 (ranger :variables
         ranger-ignored-extensions '(
                                     "mkv" "iso" "mp4" "avi" "mp4" "mkv"
                                     "zip" "rar" "exe" "ps" "png"
                                     "jpg" "jpeg" "tif" "tiff" "ics" "dmg"
                                     "swf" "gz" "m4a")
         ranger-max-preview-size 4  ;; Megabyte
         ranger-cleanup-eagerly t
         )


## general stuff

From: http://blog.christopher-atkins.com/more-spacemacs

Inter-file Navigation SPC b b open Helm mini-buffer SPC f f Helm find files, is less useful than SPC p f Projectile find files SPC p p Projectile find project

Intra-file Navigation SPC s s SWOOP! opens a copy of the buffer then elides lines that don’t match the search you type, allowing you to navigate the top buffer by selecting lines in the swoop buffer

Window navigation SPC <number> navigate numbered windows Eyebrowse layer allows SPC W then a number to create/navigate to a new workspace with Eyebrowse working you can using Vim’s gt and gT to

Editing Select some text, then s <char> will surround with <char> iedit, get a selection (the whole current symbol by default) then SPC s e to enter iedit mode, allowing you to edit all the matched things at once SPC ; ; toggle line comment Diacritics in Emacs C-x 8 ' e to creates é

Help SPC h d invokes “help describe”, providing access to multiple ways of find help SPC f e h is canonical spacemacs help

Checking SPC t s turns on syntax checking

Future layers to explore OrgMode + Capture mode Abbrev mode

Editorconfig layer to manage things like indent and such
