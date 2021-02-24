# Work in Progress


## comments

`SPC ;`


`SPC ; i i` comment indented
`SPC ; p a` comment paragraph

`M-;` - Emacs comment line


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

try adjusting `auto-completion-idle-delay`

@ag i seem to be using company, rather than auto-complete so i have `company-idle-delay` - i'd much rather have the popup be manual though - if i want auto-complete then i know and want it quickly, if i don't want it i don't ever want it to appear
ag [5:24 PM]
then try `company-auto-complete`



## Ideas for intro to Spacemacs

http://www.jesshamrick.com/2012/09/10/absolute-beginners-guide-to-emacs/
https://github.com/syl20bnr/spacemacs/blob/master/doc/BEGINNERS_TUTORIAL.org
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
3. insets opening & closing charaters, however inserts a new lines before and after the selected text


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

Spacemacs saves the bookmarks in ~/.emacs.d/.cache/bookmarks, and the recent files lise in ~/.emacs.d/.cache/recentf. You can copy these two files somewhere outside of ~/.emacs.d, and copy them back in after re-installing.

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


does anyone know what face is for the current symbol when automatic-highlight is on? SPC t h a?
nevermind, I think I found it: ahs-plugin-whole-buffer-face




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



## Madeline & powerline

`SPC t m t` - toggle mode line

There are other modeline toggles under `SPC t m` that you might explore.

@cpmcdaniel if it's the separators between the things in the modeline that is bothering you, you can change the separator in our `.spacemacs`... I set mine to `nil`, ala:
```
(setq powerline-default-separator nil
        powerline-center-theme t)
```


## copy from helm buffer

C-c C-i





http://sprungcanary.net/2015/11/29/a-repl-story/

Keybindings
https://github.com/SteveJobzniak/spacemaxed/blob/master/spacemaxed/docs/03_USEFUL_KEYBINDINGS.org

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


I am starting to use spacemacs and org-mode for academic writing, so I use pandoc, which you will probably want to use. I have written a beginner's guide to spacemacs for academic writing and a cheat sheet that you might find useful: https://ontologicalblog.wordpress.com/2016/10/14/an-absolute-beginners-guide-to-spacemacs-for-academic-writing/

* Agenda files

(with-eval-after-load 'org (setq org-agenda-files
                              '("c:/Users/USERNAME/Dropbox/Notes/")))


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

Function refers to the thing that you are calling when you hit a key or series of keys. For example j in normal modeis mapped to the function evil-next-line. In elisp these usually look like strings of hyphenated words. spc spc opens helm M-x and lets you search for functions by name and execute them. Note that functions may also be refered to as sexps (symbolic expressions).
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

On the far right is info about where you are in a buffer. Move around whth hjkl and watch it if you dont get it at first.
Major Modes

This is how emacs organizes important sets of functionality. Each buffer will have one major mode at a time. It can customize anything about emacs so that it suits the buffer you are working with. There is a mode for editing C#, a mode for editing latex, a mode for viewing files (dired-mode), a mode for searching (helm-major-mode), a mode for emulating a terminal (term-mode). You can see what major mode you are in at the bottom of each buffer in your mode line. Usually this is automatically set depending on which buffer you are in. Major modes specific functions are on the , key (also spc m).
Minor Modes

Minor modes are smaller sets of custom behavior that can work together. A major mode will automatically set a bunch of relevant minor modes, but you can toggle them with spc t. For example spc t n toggles a minor mode for line numbers. You can hover over the symbols in the modeline with your mouse to see what minor mode each represents. spc h d m (help describe mode) opens a comprehensive list of your active minor modes. Move your cursor to one and hit enter to get more information.

Side Note: The information opens in a split buffer titled *help*. Many of these buffers that are meant to be temporary can be closed quickly with q.
Layers

Everything so far (except specific key bindings) applies to emacs in general. Layers, however, are a spacemacs specific term. Layers are meant to be a simple way for you to customize your configuration by adding only one line to your .spacemacs file. See the list to see what are available. Check out the latex layer for example.
The .spacemacs file

Hit spc f e d (file emacs dotfile) to open this file. This is where you can customize everything. Find the dotspacemacs-configuration-layers line. You can use / in normal mode to start searching for it and enter when you have it. Add latex in that list. It should look like this:

dotspacemacs-configuration-layers '(
  latex
  other-layer
  other-layer)

Now spacemacs will load that layer on startup for you, which includes a major mode for editing latex and a bunch of commands. You can now either restart emacs, or hit spc f e R(file emacs reload) to reload your config. Now if you hit spc f f (file find) and open a latex file you should have some syntax highlighting and latex specific commands on your , key.

## Why Vim ?

### Positives

* Cut the Mouse - One of the main wins for Vim has always been that it is an editor that lets you keep your hands on the keyboard. Reaching for the mouse slows you down, and while I never really had a problem with that in the past (I spend more time thinking and reading than I do writing code), now that I’ve experienced 2 months with my hands on the keyboard I do find myself noticing (annoyingly) when I am forced to reach for the mouse.

* Fast Navigation - Moving around inside files in most windows editors involves a lot of home/end/up/down arrow key. Having search and tag based navigation makes getting around within a file much faster. Finding the right file is also easier with the commandt plugin, influenced by Textmate on the Mac, this fuzzy file finder is not typically available in traditional windows editors (last time I looked)

* Split Windows - Splitting windows into panes and navigating around them is a killer feature that I use all the time to see multiple files at once, or multiple areas of the same file at once. In the past I used tabs heavily, but I now prefer split panes that I can manage without reaching for the mouse.


### Negatives

    HJKL - Sorry, call me a heretic but I just cannot get used to using these keys for up/down/left/right. 20+ years of using the arrow keys is completely and utterly embedded in my brain. Besides, I’m pretty sure J (down) and K (up) are bass-ackwards. Western languages, and presumably most programming languages, read from TOP LEFT to BOTTOM RIGHT so shouldn’t UP be next to LEFT and DOWN be next to RIGHT ??? I know I could remap the keys, but plugins that follow similar patterns would also have to be remapped and I just could not get used to it.

    Mode Struggles - The modal nature of Vim is both a blessing and a curse. Its the feature that allows us to keep our hands on the keyboards without the wrist breaking key combo’s of Emacs but its also far too easy to forget which mode you are in and start typing code only to discover you just executed 5 random commands. The people who recommend you ESC constantly back into command mode are absolutely correct. You have to shift your thinking into being primarily command based with short sharp bursts of INSERT.

    Breaking Windows - One of the side effects of the modal nature of vim is that it trains you to constantly hit ESCAPE to go back to command mode…. but when you do this in more traditional windows apps its quite possible you will end up dismissing a dialog while you are in the middle of typing! How frustrating! I hit this mostly when using Tortoise SVN for my code commits.

    Disappointing Plugins - Whilst some plugins are awesome, some are surprisingly disappointing. While I was really looking forward to them, the following plugins just didn’t get as much use as I expected session (doesn’t work well with NERDTree or quickfix window), taglist (doesn’t work well with dynamic languages - at the moment I use primarily Ruby and Javascript), Conque Shell - (nice idea, but doesn’t feel natural, just easier to use :shell or have another terminal open)

Effort vs Reward

Ok. So I have a theory…

Vim proponents will tell you that the effort you spend learning vim will pay dividends in the long run once you know how to use it properly. After 60 days I can say that I agree with that opinion.

However, if I spent this much effort learning any editor I think it would pay dividends in the long run. The difference is that Vim forces you to go through this pain, whilst other editors work ‘out the box’ and so most programmers are not inclined to learn the power of those editors.

For example, I think UltraEdit, TextMate, even Visual Studio are pretty good editors, but since they all pretty much just work out of the box, its easy to ignore their advanced features and not spend the time customizing and configuring them.

I wonder if I spent 60 days really learning UltraEdit if I couldn’t get the same positives I described here ? Hmmm, a future article maybe?
Conclusion

I’m still using Vim after 60 days, and I plan to continue using it for the foreseeable future as long as I can keep taking a little time here and there to dig deeper, customize a bit more, learn how to overcome the negatives and build upon the positives.

Vim seems to be so powerful that I could be learning it forever. Here’s a list of some of the things I want to spend time on in the future.

    Movement - I need to learn more code related movement commands like % match
    Sessions - Both sessions.vim and sessionman.vim seem to struggle with NERDTree and the quickfix window
    Cut & Paste - I need to learn more about vim registers so I can manage my cut & paste better, errr, sorry, I mean yank & put
    Undo & Redo - I think I spend too much time in insert mode so when I undo it tends to be more than I’d like
    HJKL - Maybe I should remap to swap the J and K keys and try again!
    More Plugins - There are many more plugins I would like to take the time to check out, and perhaps build some of my own.



# projectile

`SPC p p` - switch to another project that spacemacs knows about




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
                                     "zip" "rar" "exe" "ps" "webm" "png"
                                     "jpg" "jpeg" "tif" "tiff" "ics" "dmg"
                                     "swf" "gz" "m4a")
         ranger-max-preview-size 4  ;; Megabyte
         ranger-cleanup-eagerly t
         )


# iedit-mode

`SPC s e`

* Blog: http://nexusstar.name/hackpads/spacemacs-iedit-mode-cheat-sheat/


iedit-mode (aka interactive-edit-mode) gives you the power to edit instances of the same text string in a buffer. It’s quite similar to multiple cursors, although if you’re used to working with multiple cursors, it’s likely you’ll prefer that.

IEdit defaults to selecting all matches, and then allows you to reduce and expand the matches in various ways, so the workflow is in the opposite direction.

I use iedit often as a quick interactive replace all, and multiple cursors for anything in between that and more complicated regexp search replace.

In conjunction with wgrep-mode (that is a writeable grep mode, which works with most grep alternative tools as well) iedit-mode can become a poweful way to edit a string across many files and review the changes before you save them.

To install it use M-x package-install iedit

Once installed you can start it with C-; (M-x iedit-mode)

Note, this doesn’t work in a terminal so in that case I’d bind it to C-c ;

Spacemacs has a binding for IEdit mode on it’s SPACE leader (SPC s e)




# Multiple cursor options in spacemacs

https://www.reddit.com/r/spacemacs/comments/4641zt/how_the_heck_do_i_use_multicursor_support/



## general stuff

From: http://blog.christopher-atkins.com/more-spacemacs

Inter-file Navigation SPC b b open Helm mini-buffer SPC f f Helm find files, is less useful than SPC p f Projectile find files SPC p p Projectile find project

Using the Ranger layer (file manager) invoked using SPC a r (applications ranger) Consier using Unimpaired layer (tpope quick cycling) Consider using Fasd layer to complement Fasd

Intra-file Navigation SPC s s SWOOP! opens a copy of the buffer then elides lines that don’t match the search you type, allowing you to navigate the top buffer by selecting lines in the swoop buffer

Window navigation SPC <number> navigate numbered windows Eyebrowse layer allows SPC W then a number to create/navigate to a new workspace with Eybrwose working you can using Vim’s gt and gT to

Editing Select some text, then s <char> will surround with <char> iedit, get a selection (the whole current symbol by default) then SPC s e to enter iedit mode, allowing you to edit all the matched things at once SPC ; ; toggle line comment Diacritics in Emacs C-x 8 ' e to creates é

Help SPC h d invokes “help describe”, providing access to multipe ways of find help SPC f e h is canonical spacemacs help

Checking SPC t s turns on syntax checking

Future layers to explore OrgMode + Capture mode Abbrev mode

Editorconfig layer to manage things like indent and such




# Literate programming

## Why Literate Programming

In Spacemacs and Clojure development, it means you could write a document explaining your project or library and include code that can execute and give results in the document itself.

So, if you wanted contributors to help with you open source project or are on-boarding a developer onto you team, you could give them a literate programming document that explains how all the important aspects work, including real code examles that they can experiment with.

## How to do it

Emacs has Org-mode with can do amazing things with documents, simply open a file with a `.org` filename extension.  Alternatively you can start the org-mode major mode with the command `M-x org-mode`

Emacs also has bable, which can take code and run it in an Emacs buffer of the correct major-mode for the language and automoaticaly return the result back to the org-mode file.


## Examples

The following are Clojure code block examples.
Basic Functionality

Let's start really simple. We will test the evaluation of a simple Clojure form. Insert the following into the org file:
```
#+begin_src clojure :results silent
  (+ 1 4)
#+end_src
```
Now place the cursor in the code block and enter the command:

C-c C-c

This should evaluate the Clojure form, and echo the results: "5" in the mini-buffer.

Now let's insert the results into the buffer immediately after the Clojure code block. Insert the following into your org file:

#+begin_src clojure :results value
  [ 1 2 3 4]
#+end_src

Execute as before:

C-c C-c

Now, immediately following the code block, the following results block will be inserted:

#+RESULTS
[ 1 2 3 4]

The result of the last form evaluated will be inserted into the results block.

Here is another simple example, with the results of evaluation included:

#+begin_src clojure :results value
  (def small-map {:a 2 :b 4 :c 8})
  (:b small-map)
#+end_src

#+RESULTS:
: 4

A More Complicated Example- Make a Graph and Insert It into the Document

The next example will use an interesting Clojure based library called Incanter. The code will demonstrate the creation of a basic x-y line plot using the Incanter xy-plot function. There is a preliminary step which is required to download the Incanter library into your machine. In the Leiningen project, there is a file called project.clj which must have the Incanter library dependency added to it as follows:
```clojure
(defproject clojure-examples "0.1.0-SNAPSHOT"
  :description "FIXME: write description"
  :url "http://example.com/FIXME"
  :license {:name "Eclipse Public License"
            :url "http://www.eclipse.org/legal/epl-v10.html"}
  :dependencies [[org.clojure/clojure "1.5.0"]
                 [incanter "1.5.4"]])
```

After the project.clj file is modified, issue the command lein deps at the command line. You must have an internet connection for this to successfully download the dependencies into your local machine.

The following code block shows how the Incanter library is used to create an x-y line plot. The view function will display the plot. The plot is also saved to both PDF and PNG format image files.

```
#+begin_src clojure
  (use '(incanter core charts pdf))
  ;;; Create the x and y data:
  (def x-data [0.0 1.0 2.0 3.0 4.0 5.0])
  (def y-data [2.3 9.0 2.6 3.1 8.1 4.5])
  (def xy-line (xy-plot x-data y-data))
  (view xy-line)
  (save-pdf xy-line "incanter-xy-line.pdf")
  (save xy-line "incanter-xy-line.png")
#+end_src
```

To insert the image into the exported document, add this code:

```
#+CAPTION: A basic x-y line plot
#+NAME: fig:xy-line
[[./incanter-xy-line.pdf]]
```

Note that the file will be saved to the highest level of the Leiningen project. Depending on where you created the org file, the path to the file may have to be different than shown.
Export to LaTeX or HTML

To export to LaTeX, C-c C-e l l. To export to HTML, C-c C-e h h.

Note that the exported HTML will hyperlink the PDF file; to embed the image in the HTML, switch to the PNG image file. The exported LaTeX (.tex) file will embed either the PDF or PNG file. Graphical quality will be superior with the PDF file.

## Session Evaluation

By default, each individual code block will execute by starting a Clojure process. Each code block will execute in isolation from the others. Due to the start-up time of a Java virtual machine, this can make execution of many blocks slow. The :session option will allow control of the process assigned to each code block. Please refer to the org manual for details on :session usage.
Specify namespace

By default, each individual code block will execute under CIDER connection session's current namespace. But you can specify a namespace like bellowing:

```
#+begin_src clojure :results pp
(ns kk.test)
(def he "hi")
#+end_src

#+RESULTS:
: #'kk.test/he
```

You can see the second code block still us individual namespace.

```
#+begin_src clojure :results value :ns kk2
(def he "hi")
*ns*
#+end_src

#+RESULTS:
: nil#'kk2/he#namespace[kk2

Change Clojure cwd in Org-mode way
```

As this blog post Clojure Plotting to Org inline image in ob-clojure mentioned.

Because Clojure is based on JVM, can JVM does not allow to dynamically change current working directory (cwd). So if you use ob-clojure in Org-mode, and need to interact with path, directory, file etc. You need to figure other ways. Here is an Org-mode way, use header argument :var to pass current buffer's path into Clojure, then use this dir variable in Clojure to construct a correct path.

```
#+begin_src clojure :results graphics :dir "data/images" :file "ob-clojure-literate.png" :var dir=(concat (file-name-directory (buffer-file-name)) "data/images/")
(use '(incanter core stats datasets charts io pdf))
(def hist (histogram (sample-normal 1000)))
(save hist (str dir "ob-clojure-literate.png"))
#+end_src
```

## Additional Examples

The above set-up and examples were intended for the beginner to achieve success with Clojure code blocks in org mode documents.

Please refer to the documentation for emacs, Clojure-mode, and CIDER which are referenced in the requirements session for details on how to enhance the system beyond the basics described in this tutorial.

More examples of Clojure code blocks can be found at these sites:

    Emacs Org and Overtone
    Literate Programming Solution to the Potter Kata
    Incanter Chart Customizations
    thi.ng/geom: Comprehensive geometry toolkit for Clojure/ClojureScript developed in a literate programming style.
