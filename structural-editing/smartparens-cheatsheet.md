# Smartparens cheetsheet

`SPC SPC sp-cheet-sheet`  lists all the smartparens commands available

> #### Hint::Animated cheatsheet
> [Animated Smartparens cheetsheet](https://gist.github.com/pvik/8eb5755cc34da0226e3fc23a320a3c95) - update to use Spacemacs keybindings

---

> ####TODO::Break out common commands into their own sections with examples


    (sp-cheat-sheet &optional ARG)

Generate a cheat sheet of all the smartparens interactive functions.

Without a prefix argument, print only the short documentation and examples.

With non-nil prefix argument ARG, show the full documentation for each function.

You can follow the links to the function or variable help page.
To get back to the full list, use [.

You can use ‘beginning-of-defun’ and ‘end-of-defun’ to jump to
the previous/next entry.

Examples are fontified using the ‘font-lock-string-face’ for
better orientation.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

    (sp-describe-system)

Describe user’s system.

The output of this function can be used in bug reports.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

    (smartparens-strict-mode &optional ARG)

Toggle the strict smartparens mode.

When strict mode is active, ‘delete-char’, ‘kill-word’ and their
backward variants will skip over the pair delimiters in order to
keep the structure always valid (the same way as ‘paredit-mode’
does).  This is accomplished by remapping them to
‘sp-delete-char’ and ‘sp-kill-word’.  There is also function
‘sp-kill-symbol’ that deletes symbols instead of words, otherwise
working exactly the same (it is not bound to any key by default).

When strict mode is active, this is indicated with "/s"
after the smartparens indicator in the mode list.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

    (smartparens-global-strict-mode &optional ARG)

Toggle Smartparens-Strict mode in all buffers.
With prefix ARG, enable Smartparens-Global-Strict mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Smartparens-Strict mode is enabled in all buffers where
‘turn-on-smartparens-strict-mode’ would do it.
See ‘smartparens-strict-mode’ for more information on Smartparens-Strict mode.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

    (turn-on-smartparens-strict-mode)

Turn on ‘smartparens-strict-mode’.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

    (turn-off-smartparens-strict-mode)

Turn off ‘smartparens-strict-mode’.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-prefix-tag-object is an interactive compiled Lisp function in
‘smartparens.el’.

    (sp-prefix-tag-object &optional ARG)

Read the command and invoke it on the next tag object.

If you specify a regular emacs prefix argument this is passed to
the executed command.  Therefore, executing
"SPC u 2 M-x sp-prefix-tag-object M-x sp-forward-sexp" will move two tag
expressions forward, ignoring possible symbols or paired
expressions inbetween.

Tag object is anything delimited by sgml tag.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-prefix-pair-object is an interactive compiled Lisp function in
‘smartparens.el’.

    (sp-prefix-pair-object &optional ARG)

Read the command and invoke it on the next pair object.

If you specify a regular emacs prefix argument this is passed to
the executed command.  Therefore, executing
"SPC u 2 M-x sp-prefix-pair-object M-x sp-forward-sexp" will move two paired
expressions forward, ignoring possible symbols inbetween.

Pair object is anything delimited by pairs from ‘sp-pair-list’.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-prefix-symbol-object is an interactive compiled Lisp function in
‘smartparens.el’.

    (sp-prefix-symbol-object &optional ARG)

Read the command and invoke it on the next pair object.

If you specify a regular emacs prefix argument this is passed to
the executed command.  Therefore, executing
"SPC u 2 M-x sp-prefix-symbol-object M-x sp-forward-sexp" will move two symbols
forward, ignoring any structure.

Symbol is defined as a chunk of text recognized by
‘sp-forward-symbol’.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-prefix-save-excursion is an interactive compiled Lisp function in
‘smartparens.el’.

    (sp-prefix-save-excursion &optional ARG)

Execute the command keeping the point fixed.

If you specify a regular emacs prefix argument this is passed to
the executed command.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-narrow-to-sexp is an interactive compiled Lisp function in ‘smartparens.el’.

    (sp-narrow-to-sexp ARG)

Make text outside current balanced expression invisible.
A numeric arg specifies to move up by that many enclosing expressions.

See also ‘narrow-to-region’ and ‘narrow-to-defun’.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-forward-sexp is an interactive compiled Lisp function in ‘smartparens.el’.

    (sp-forward-sexp &optional ARG)

  |(foo bar baz)   -> (foo bar baz)|

  (|foo bar baz)   -> (foo| bar baz)

  (|foo bar baz)   -> (foo bar| baz) ;; 2

  (foo (bar baz|)) -> (foo (bar baz)|)

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-backward-sexp is an interactive compiled Lisp function in ‘smartparens.el’.

    (sp-backward-sexp &optional ARG)

  (foo bar baz)|   -> |(foo bar baz)

  (foo| bar baz)   -> (|foo bar baz)

  (foo bar| baz)   -> (|foo bar baz) ;; 2

  (|(foo bar) baz) -> ((|foo bar) baz)

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-next-sexp is an interactive compiled Lisp function in ‘smartparens.el’.

    (sp-next-sexp &optional ARG)

  ((foo) |bar (baz quux)) -> ((foo) bar |(baz quux))

  ((foo) bar |(baz quux)) -> |((foo) bar (baz quux))

and with non-nil ‘sp-navigate-interactive-always-progress-point’

  (f|oo bar) -> (foo |bar)

  ((fo|o) (bar)) -> ((foo) |(bar))

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-previous-sexp is an interactive compiled Lisp function in ‘smartparens.el’.

    (sp-previous-sexp &optional ARG)

  ((foo) bar| (baz quux)) -> ((foo)| bar (baz quux))

  ((foo)| bar (baz quux)) -> ((foo) bar (baz quux))|

and if ‘sp-navigate-interactive-always-progress-point’ is non-nil

  (foo b|ar baz) -> (foo| bar baz)

  (foo (b|ar baz)) -> (foo| (bar baz))

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-forward-parallel-sexp is an interactive compiled Lisp function in
‘smartparens.el’.

    (sp-forward-parallel-sexp &optional ARG)

Move forward across one balanced expressions at the same depth.

If calling ‘sp-forward-sexp’ at point would result in raising a
level up, loop back to the first expression at current level,
that is the first child of the enclosing sexp as defined by
‘sp-get-enclosing-sexp’.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-backward-parallel-sexp is an interactive compiled Lisp function in
‘smartparens.el’.

    (sp-backward-parallel-sexp &optional ARG)

Move backward across one balanced expressions at the same depth.

If calling ‘sp-backward-sexp’ at point would result in raising a
level up, loop back to the last expression at current level, that
is the last child of the enclosing sexp as defined by
‘sp-get-enclosing-sexp’.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-down-sexp is an interactive compiled Lisp function in ‘smartparens.el’.

    (sp-down-sexp &optional ARG)

  |foo (bar (baz quux)) -> foo (|bar (baz quux))

  |foo (bar (baz quux)) -> foo (bar (|baz quux)) ;; 2

  |foo (bar (baz (quux) blab)) -> foo (bar (baz (|quux) blab)) ;; SPC u

  (foo (bar baz) |quux) -> (|foo (bar baz) quux)

  (blab foo |(bar baz) quux) -> (|blab foo (bar baz) quux) ;; SPC u SPC u

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-backward-down-sexp is an interactive compiled Lisp function in
‘smartparens.el’.

    (sp-backward-down-sexp &optional ARG)

  foo (bar (baz quux))| -> foo (bar (baz quux)|)

  (bar (baz quux)) foo| -> (bar (baz quux|)) foo ;; 2

  foo (bar (baz (quux) blab))| -> foo (bar (baz (quux|) blab)) ;; SPC u

  (foo| (bar baz) quux) -> (foo (bar baz) quux|)

  (foo (bar baz) |quux blab) -> (foo (bar baz) quux blab|) ;; SPC u SPC u

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-beginning-of-sexp is an interactive compiled Lisp function in
‘smartparens.el’.

    (sp-beginning-of-sexp &optional ARG)

  (foo (bar baz) quux| (blab glob)) -> (|foo (bar baz) quux (blab glob))

  (foo (bar baz|) quux (blab glob)) -> (foo (|bar baz) quux (blab glob))

  (|foo) (bar) (baz quux) -> (foo) (bar) (|baz quux) ;; 3

  (foo bar) (baz) (quux|) -> (|foo bar) (baz) (quux) ;; -3

  ((foo bar) (baz |quux) blab) -> (|(foo bar) (baz quux) blab) ;; SPC u

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-end-of-sexp is an interactive compiled Lisp function in ‘smartparens.el’.

    (sp-end-of-sexp &optional ARG)

  (foo |(bar baz) quux (blab glob)) -> (foo (bar baz) quux (blab glob)|)

  (foo (|bar baz) quux (blab glob)) -> (foo (bar baz|) quux (blab glob))

  (|foo) (bar) (baz quux) -> (foo) (bar) (baz quux|) ;; 3

  (foo bar) (baz) (quux|) -> (foo bar|) (baz) (quux) ;; -3

  ((foo |bar) (baz quux) blab) -> ((foo bar) (baz quux) blab|) ;; SPC u

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-beginning-of-next-sexp is an interactive compiled Lisp function in
‘smartparens.el’.

    (sp-beginning-of-next-sexp &optional ARG)

  (f|oo) (bar) (baz) -> (foo) (|bar) (baz)

  (f|oo) (bar) (baz) -> (foo) (bar) (|baz) ;; 2

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-beginning-of-previous-sexp is an interactive compiled Lisp function in
‘smartparens.el’.

    (sp-beginning-of-previous-sexp &optional ARG)

  (foo) (b|ar) (baz) -> (|foo) (bar) (baz)

  (foo) (bar) (b|az) -> (|foo) (bar) (baz) ;; 2

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-end-of-next-sexp is an interactive compiled Lisp function in
‘smartparens.el’.

    (sp-end-of-next-sexp &optional ARG)

  (f|oo) (bar) (baz) -> (foo) (bar|) (baz)

  (f|oo) (bar) (baz) -> (foo) (bar) (baz|) ;; 2

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-end-of-previous-sexp is an interactive compiled Lisp function in
‘smartparens.el’.

    (sp-end-of-previous-sexp &optional ARG)

  (foo) (b|ar) (baz) -> (foo|) (bar) (baz)

  (foo) (bar) (b|az) -> (foo|) (bar) (baz) ;; 2

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-up-sexp is an interactive compiled Lisp function in ‘smartparens.el’.

    (sp-up-sexp &optional ARG INTERACTIVE)

  (foo |(bar baz) quux blab) -> (foo (bar baz) quux blab)|

  (foo (bar |baz) quux blab) -> (foo (bar baz) quux blab)| ;; 2

  (foo bar |baz              -> (foo bar baz)| ;; re-indent the expression
​   )

  (foo  |(bar baz)           -> (foo)| (bar baz) ;; close unbalanced expr.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-backward-up-sexp is an interactive compiled Lisp function in
‘smartparens.el’.

    (sp-backward-up-sexp &optional ARG INTERACTIVE)

  (foo (bar baz) quux| blab) -> |(foo (bar baz) quux blab)

  (foo (bar |baz) quux blab) -> |(foo (bar baz) quux blab) ;; 2

  (                  -> |(foo bar baz)
​    foo |bar baz)

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp--kill-or-copy-region is an interactive compiled Lisp function in
‘smartparens.el’.

    (sp--kill-or-copy-region BEG END &optional DONT-KILL)

Kill or copy region between BEG and END according to DONT-KILL.
If ‘evil-mode’ is active, copying a region will also add it to the 0 register.
Additionally, if command was prefixed with a register, copy the region
to that register.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-kill-sexp is an interactive compiled Lisp function in ‘smartparens.el’.

    (sp-kill-sexp &optional ARG DONT-KILL)

 (foo |(abc) bar)  -> (foo | bar) ;; nil, defaults to 1

 (foo (bar) | baz) -> |           ;; 2

 (foo |(bar) baz)  -> |           ;; SPC u SPC u

 (1 |2 3 4 5 6)    -> (1|)        ;; SPC u

 (1 |2 3 4 5 6)    -> (1 | 5 6)   ;; 3

 (1 2 3 4 5| 6)    -> (1 2 3 | 6) ;; -2

 (1 2 3 4| 5 6)    -> (|5 6)      ;; - SPC u

 (1 2 |   )        -> (1 2|)      ;; SPC u, kill useless whitespace

 (1 2 3 |4 5 6)    -> (|)         ;; 0

Note: prefix argument is shown after the example in
"comment". Assumes ‘sp-navigate-consider-symbols’ equal to t.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-backward-kill-sexp is an interactive compiled Lisp function in
‘smartparens.el’.

    (sp-backward-kill-sexp &optional ARG DONT-KILL)

  (foo (abc)| bar)           -> (foo | bar)

  blab (foo (bar baz) quux)| -> blab |

  (1 2 3 |4 5 6)             -> (|4 5 6) ;; SPC u

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-copy-sexp is an interactive compiled Lisp function in ‘smartparens.el’.

    (sp-copy-sexp &optional ARG)

Copy the following ARG expressions to the kill-ring.

This is exactly like calling ‘sp-kill-sexp’ with second argument
t.  All the special prefix arguments work the same way.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-backward-copy-sexp is an interactive compiled Lisp function in
‘smartparens.el’.

    (sp-backward-copy-sexp &optional ARG)

Copy the previous ARG expressions to the kill-ring.

This is exactly like calling ‘sp-backward-kill-sexp’ with second argument
t.  All the special prefix arguments work the same way.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-clone-sexp is an interactive compiled Lisp function in ‘smartparens.el’.

    (sp-clone-sexp)

Clone sexp after or around point.

If the form immediately after point is a sexp, clone it below the
current one and put the point in front of it.

Otherwise get the enclosing sexp and clone it below the current
enclosing sexp.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-kill-hybrid-sexp is an interactive compiled Lisp function in
‘smartparens.el’.

    (sp-kill-hybrid-sexp ARG)

  foo | bar baz               -> foo |               ;; nil

  foo (bar | baz) quux        -> foo (bar |) quux    ;; nil

  foo | bar (baz              -> foo |               ;; nil
             quux)

  foo "bar |baz quux" quack   -> foo "bar |" quack   ;; nil

  foo (bar
       baz) qu|ux (quack      ->   foo | hoo         ;; SPC u SPC u
                   zaq) hoo

  foo | (bar                  -> foo |               ;; C-0
         baz)                          baz)

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-kill-whole-line is an interactive compiled Lisp function in ‘smartparens.el’.

    (sp-kill-whole-line)

  (progn                    (progn
    (some |long sexp))  ->    |)

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-transpose-sexp is an interactive compiled Lisp function in ‘smartparens.el’.

    (sp-transpose-sexp &optional ARG)

  foo |bar baz     -> bar foo| baz

  foo |bar baz     -> bar baz foo| ;; 2

  (foo) |(bar baz) -> (bar baz) (foo)|

  (foo bar)        ->    (baz quux)   ;; keeps the formatting
​    |(baz quux)            |(foo bar)

  foo bar baz|     -> foo baz| bar ;; -1

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-transpose-hybrid-sexp is an interactive compiled Lisp function in
‘smartparens.el’.

    (sp-transpose-hybrid-sexp &optional ARG)

  foo bar            baz (quux
  |baz (quux   ->         quack)
        quack)       foo bar\n|


  [(foo) (bar) -> [(baz)
  |(baz)]          (foo) (bar)|]

  foo bar baz  -> quux flux
  |quux flux      foo bar baz\n|

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-push-hybrid-sexp is an interactive compiled Lisp function in
‘smartparens.el’.

    (sp-push-hybrid-sexp)

  |x = big_function_call(a,    |(a,
                         b)      b) = read_user_input()
                           ->
  (a,                          x = big_function_call(a,
   b) = read_user_input()                            b)

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-indent-adjust-sexp is an interactive compiled Lisp function in
‘smartparens.el’.

    (sp-indent-adjust-sexp)

Add the hybrid sexp at line into previous sexp.  All forms
between the two are also inserted.  Specifically, if the point is
on empty line, move the closing delimiter there, so the next
typed text will become the last item of the previous sexp.

This acts similarly to ‘sp-add-to-previous-sexp’ but with special
handling of empty lines.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-dedent-adjust-sexp is an interactive compiled Lisp function in
‘smartparens.el’.

    (sp-dedent-adjust-sexp)


Remove the hybrid sexp at line from previous sexp.  All
sibling forms after it are also removed (not deleted, just placed
outside of the enclosing list).  Specifically, if the point is on
empty line followed by closing delimiter of enclosing list, move
the closing delimiter after the last item in the list.

This acts similarly to ‘sp-forward-barf-sexp’ but with special
handling of empty lines.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-slurp-hybrid-sexp is an interactive compiled Lisp function in
‘smartparens.el’.

    (sp-slurp-hybrid-sexp)

Add hybrid sexp following the current list in it by moving the
closing delimiter.

This is philosophically similar to ‘sp-forward-slurp-sexp’ but
works better in "line-based" languages like C or Java.

Because the structure is much looser in these languages, this
command currently does not support all the prefix argument
triggers that ‘sp-forward-slurp-sexp’ does.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-forward-slurp-sexp is an interactive compiled Lisp function in
‘smartparens.el’.

It is bound to C-).

    (sp-forward-slurp-sexp &optional ARG)

  (foo |bar) baz        -> (foo |bar baz)

  [(foo |bar)] baz      -> [(foo |bar) baz]

  [(foo |bar) baz]      -> [(foo |bar baz)]

  ((|foo) bar baz quux) -> ((|foo bar baz quux)) ;; with SPC u

  "foo| bar" "baz quux" -> "foo| bar baz quux"

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-backward-slurp-sexp is an interactive compiled Lisp function in
‘smartparens.el’.

It is bound to C-(.

    (sp-backward-slurp-sexp &optional ARG)

  foo (bar| baz)        -> (foo bar| baz)

  foo [(bar| baz)]      -> [foo (bar| baz)]

  [foo (bar| baz)]      -> [(foo bar| baz)]

  (foo bar baz (|quux)) -> ((foo bar baz |quux)) ;; with SPC u

  "foo bar" "baz |quux" -> "foo bar baz |quux"

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-add-to-previous-sexp is an interactive compiled Lisp function in
‘smartparens.el’.

    (sp-add-to-previous-sexp &optional ARG)

  (foo bar) |baz quux        -> (foo bar |baz) quux

  (foo bar) |baz quux        -> (foo bar |baz quux) ;; 2

  (blab (foo bar) |baz quux) -> (blab (foo bar |baz quux)) ;; SPC u

  (foo bar) (baz |quux)      -> (foo bar (baz |quux)) ;; SPC u SPC u

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-add-to-next-sexp is an interactive compiled Lisp function in
‘smartparens.el’.

    (sp-add-to-next-sexp &optional ARG)

  foo bar| (baz quux)        -> foo (bar| baz quux)

  foo bar| (baz quux)        -> (foo bar| baz quux) ;; 2

  (foo bar |(bar quux) blab) -> ((foo bar |bar quux) blab) ;; SPC u

  (foo |bar) (baz quux)      -> ((foo |bar) baz quux) ;; SPC u SPC u

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-forward-barf-sexp is an interactive compiled Lisp function in
‘smartparens.el’.

It is bound to M-).

    (sp-forward-barf-sexp &optional ARG)

  (foo bar| baz)   -> (foo bar|) baz   ;; nil (defaults to 1)

  (foo| [bar baz]) -> (foo|) [bar baz] ;; 1

  (1 2 3| 4 5 6)   -> (1 2 3|) 4 5 6   ;; SPC u (or numeric prefix 3)

  (foo bar| baz)   -> foo (bar| baz)   ;; -1

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-backward-barf-sexp is an interactive compiled Lisp function in
‘smartparens.el’.

It is bound to M-(.

    (sp-backward-barf-sexp &optional ARG)

  (foo bar| baz) -> foo (bar| baz)

  ([foo bar] |baz) -> [foo bar] (|baz)

  (1 2 3 |4 5 6) -> 1 2 3 (|4 5 6) ;; SPC u (or 3)

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-skip-forward-to-symbol is an interactive compiled Lisp function in
‘smartparens.el’.

    (sp-skip-forward-to-symbol &optional STOP-AT-STRING STOP-AFTER-STRING
    STOP-INSIDE-STRING)

  foo|   bar -> foo   |bar

  foo|   [bar baz] -> foo   |[bar baz]

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-skip-backward-to-symbol is an interactive compiled Lisp function in
‘smartparens.el’.

    (sp-skip-backward-to-symbol &optional STOP-AT-STRING STOP-AFTER-STRING
    STOP-INSIDE-STRING)

  foo   |bar -> foo|   bar

  [bar baz]   |foo -> [bar baz]|   foo

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-forward-symbol is an interactive compiled Lisp function in ‘smartparens.el’.

    (sp-forward-symbol &optional ARG)

  |foo bar baz          -> foo| bar baz

  |foo (bar (baz))      -> foo (bar| (baz)) ;; 2

  |foo (bar (baz) quux) -> foo (bar (baz) quux|) ;; 4

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-backward-symbol is an interactive compiled Lisp function in ‘smartparens.el’.

    (sp-backward-symbol &optional ARG)

  foo bar| baz            -> foo |bar baz

  ((foo bar) baz)|        -> ((foo |bar) baz) ;; 2

  (quux ((foo) bar) baz)| -> (|quux ((foo) bar) baz) ;; 4

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-rewrap-sexp is an interactive compiled Lisp function in ‘smartparens.el’.

    (sp-rewrap-sexp PAIR &optional KEEP-OLD)

  (foo |bar baz) -> [foo |bar baz]   ;; [

  (foo |bar baz) -> [(foo |bar baz)] ;; SPC u [

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-swap-enclosing-sexp is an interactive compiled Lisp function in
‘smartparens.el’.

    (sp-swap-enclosing-sexp &optional ARG)

  (foo [|bar] baz)              -> [foo (|bar) baz] ;; 1

  (foo {bar [|baz] quux} quack) -> [foo {bar (|baz) quux} quack] ;; 2

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-change-inner is an interactive compiled Lisp function in ‘smartparens.el’.

    (sp-change-inner)

  (f|oo [bar] baz) -> (foo [|] baz)

  {|’foo’: ’bar’}  -> {’|’: ’bar’}

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-unwrap-sexp is an interactive compiled Lisp function in ‘smartparens.el’.

(sp-unwrap-sexp &optional ARG)

  |(foo bar baz)     -> |foo bar baz

  (foo bar| baz)     -> foo bar| baz

  |(foo) (bar) (baz) -> |(foo) bar (baz) ;; 2

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-backward-unwrap-sexp is an interactive compiled Lisp function in
‘smartparens.el’.

(sp-backward-unwrap-sexp &optional ARG)

  (foo bar baz)|     -> foo bar baz|

  (foo bar)| (baz)   -> foo bar| (baz)

  (foo) (bar) (baz)| -> foo (bar) (baz) ;; 3

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-splice-sexp is an interactive compiled Lisp function in ‘smartparens.el’.

(sp-splice-sexp &optional ARG)

  (foo (bar| baz) quux) -> (foo bar| baz quux)

  (foo |(bar baz) quux) -> foo |(bar baz) quux

  (foo (bar| baz) quux) -> foo (bar| baz) quux ;; 2

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-splice-sexp-killing-backward is an interactive compiled Lisp function in
‘smartparens.el’.

(sp-splice-sexp-killing-backward &optional ARG)

  (foo (let ((x 5)) |(sqrt n)) bar)  -> (foo |(sqrt n) bar)

​  (when ok|                             |(perform-operation-1)
​    (perform-operation-1)            ->  (perform-operation-2)
​    (perform-operation-2))

​  (save-excursion                    -> |(awesome-stuff-happens) ;; 2
​    (unless (test)
​      |(awesome-stuff-happens)))

Note that to kill only the content and not the enclosing
delimiters you can use SPC u M-x sp-backward-kill-sexp.
See ‘sp-backward-kill-sexp’ for more information.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-splice-sexp-killing-forward is an interactive compiled Lisp function in
‘smartparens.el’.

(sp-splice-sexp-killing-forward &optional ARG)

  (a (b c| d e) f) -> (a b c| f)

  (+ (x |y z) w)   -> (+ x| w)

Note that to kill only the content and not the enclosing
delimiters you can use SPC u M-x sp-kill-sexp.
See ‘sp-kill-sexp’ for more information.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-raise-sexp is an alias for ‘sp-splice-sexp-killing-around’ in
‘smartparens.el’.

(sp-raise-sexp &optional ARG)

  (a b |(c d) e f)      -> |(c d)     ;; with arg = 1

  (a b |c d e f)        -> |c d       ;; with arg = 2

  (- (car x) |a 3)      -> (car x)|   ;; with arg = -1

  (foo (bar |baz) quux) -> |(bar baz) ;; with arg = SPC u SPC u

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-convolute-sexp is an interactive compiled Lisp function in ‘smartparens.el’.

(sp-convolute-sexp &optional ARG)

We want to move the ‘while’ before the ‘let’.

​  (let ((stuff 1)             (while (we-are-good)
​        (other 2))              (let ((stuff 1)
​    (while (we-are-good)  ->          (other 2))
​     |(do-thing 1)               |(do-thing 1)
​      (do-thing 2)                (do-thing 2)
​      (do-thing 3)))              (do-thing 3)))

  (forward-char (sp-get env |:op-l)) -> (sp-get env (forward-char |:op-l))

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-absorb-sexp is an interactive compiled Lisp function in ‘smartparens.el’.

(sp-absorb-sexp &optional ARG)

​  (do-stuff 1)         (save-excursion
​  (save-excursion  ->   |(do-stuff 1)
​   |(do-stuff 2))        (do-stuff 2))

  foo bar (concat |baz quux) -> (concat |foo bar baz quux) ;; 2

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-emit-sexp is an interactive compiled Lisp function in ‘smartparens.el’.

(sp-emit-sexp &optional ARG)

​  (save-excursion     ​(do-stuff 1)
​    (do-stuff 1)      (do-stuff 2)
​    (do-stuff 2)  ->  (save-excursion
​   |(do-stuff 3))      |(do-stuff 3))

​  (while not-done-yet       (execute-only-once)
​    (execute-only-once) ->  (while not-done-yet    ;; arg = 2
​   |(execute-in-loop))       |(execute-in-loop))

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-extract-before-sexp is an interactive compiled Lisp function in
‘smartparens.el’.

(sp-extract-before-sexp &optional ARG)

Move the expression after point before the enclosing balanced expression.

The point moves with the extracted expression.

With ARG positive N, extract N expressions after point.

With ARG negative -N, extract N expressions before point.

With ARG being raw prefix argument SPC u, extract all the expressions
up until the end of enclosing list.

If the raw prefix is negative, this behaves as SPC u ‘sp-backward-barf-sexp’.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-extract-after-sexp is an interactive compiled Lisp function in
‘smartparens.el’.

(sp-extract-after-sexp &optional ARG)

Move the expression after point after the enclosing balanced expression.

The point moves with the extracted expression.

With ARG positive N, extract N expressions after point.

With ARG negative -N, extract N expressions before point.

With ARG being raw prefix argument SPC u, extract all the
expressions up until the end of enclosing list.

With ARG being negative raw prefix argument M-- SPC u, extract all the
expressions up until the start of enclosing list.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-forward-whitespace is an interactive compiled Lisp function in
‘smartparens.el’.

(sp-forward-whitespace &optional ARG)

Skip forward past the whitespace characters.
With non-nil ARG return number of characters skipped.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-backward-whitespace is an interactive compiled Lisp function in
‘smartparens.el’.

(sp-backward-whitespace &optional ARG)

Skip backward past the whitespace characters.
With non-nil ARG return number of characters skipped.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-split-sexp is an interactive compiled Lisp function in ‘smartparens.el’.

It is bound to SPC j s, M-m j s.

(sp-split-sexp ARG)

  (foo bar |baz quux)   -> (foo bar) |(baz quux)

  "foo bar |baz quux"   -> "foo bar" |"baz quux"

  ([foo |bar baz] quux) -> ([foo] |[bar baz] quux)

  (foo bar| baz quux) -> (foo) (bar|) (baz) (quux) ;; SPC u

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-join-sexp is an interactive compiled Lisp function in ‘smartparens.el’.

(sp-join-sexp &optional ARG)

  (foo bar) |(baz)                    -> (foo bar |baz)

  (foo) |(bar) (baz)                  -> (foo |bar baz) ;; 2

  [foo] [bar] |[baz]                  -> [foo bar |baz] ;; -2

  (foo bar (baz)| (quux) (blob bluq)) -> (foo bar (baz| quux blob bluq)) ;; SPC u

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-select-next-thing is an interactive compiled Lisp function in
‘smartparens.el’.

(sp-select-next-thing &optional ARG POINT)

Set active region over next thing as recognized by ‘sp-get-thing’.

If ARG is positive N, select N expressions forward.

If ARG is negative -N, select N expressions backward.

If ARG is a raw prefix SPC u select all the things up until the
end of current expression.

If ARG is a raw prefix SPC u SPC u select the current expression (as
if doing ‘sp-backward-up-sexp’ followed by
‘sp-select-next-thing’).

If ARG is number 0 (zero), select all the things inside the
current expression.

If POINT is non-nil, it is assumed it’s a point inside the buffer
from which the selection extends, either forward or backward,
depending on the value of ARG.

If the currently active region contains a balanced expression,
following invocation of ‘sp-select-next-thing’ will select the
inside of this expression .  Therefore calling this function
twice with no active region will select the inside of the next
expression.

If the point is right in front of the expression any potential
prefix is ignored.  For example, ’|(foo) would only select (foo)
and not include ’ in the selection.  If you wish to also select
the prefix, you have to move the point backwards.

With ‘sp-navigate-consider-symbols’ symbols and strings are also
considered balanced expressions.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-select-previous-thing is an interactive compiled Lisp function in
‘smartparens.el’.

(sp-select-previous-thing &optional ARG POINT)

Set active region over ARG previous things as recognized by ‘sp-get-thing’.

If ARG is negative -N, select that many expressions forward.

With ‘sp-navigate-consider-symbols’ symbols and strings are also
considered balanced expressions.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-select-next-thing-exchange is an interactive compiled Lisp function in
‘smartparens.el’.

(sp-select-next-thing-exchange &optional ARG POINT)

Just like ‘sp-select-next-thing’ but run ‘exchange-point-and-mark’ afterwards.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-select-previous-thing-exchange is an interactive compiled Lisp function in
‘smartparens.el’.

(sp-select-previous-thing-exchange &optional ARG POINT)

Just like ‘sp-select-previous-thing’ but run ‘exchange-point-and-mark’ afterwards.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-mark-sexp is an interactive compiled Lisp function in ‘smartparens.el’.

(sp-mark-sexp &optional ARG ALLOW-EXTEND)

Set mark ARG balanced expressions from point.
The place mark goes is the same place M-x sp-forward-sexp would
move to with the same argument.
Interactively, if this command is repeated
or (in Transient Mark mode) if the mark is active,
it marks the next ARG sexps after the ones already marked.
This command assumes point is not in a string or comment.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-delete-char is an interactive compiled Lisp function in ‘smartparens.el’.

(sp-delete-char &optional ARG)

 (quu|x "zot") -> (quu| "zot")

 (quux |"zot") -> (quux "|zot") -> (quux "|ot")

 (foo (|) bar) -> (foo | bar)

 |(foo bar) -> (|foo bar)

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-backward-delete-char is an interactive compiled Lisp function in
‘smartparens.el’.

(sp-backward-delete-char &optional ARG)

 ("zot" q|uux) -> ("zot" |uux)

 ("zot"| quux) -> ("zot|" quux) -> ("zo|" quux)

 (foo (|) bar) -> (foo | bar)

 (foo bar)| -> (foo bar|)

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-kill-symbol is an interactive compiled Lisp function in ‘smartparens.el’.

(sp-kill-symbol &optional ARG WORD)

Kill a symbol forward, skipping over any intervening delimiters.

With ARG being positive number N, repeat that many times.

With ARG being Negative number -N, repeat that many times in
backward direction.

See ‘sp-forward-symbol’ for what constitutes a symbol.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-kill-word is an interactive compiled Lisp function in ‘smartparens.el’.

(sp-kill-word &optional ARG)

Kill a word forward, skipping over intervening delimiters.

With ARG being positive number N, repeat that many times.

With ARG being Negative number -N, repeat that many times in
backward direction.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-delete-symbol is an interactive compiled Lisp function in ‘smartparens.el’.

(sp-delete-symbol &optional ARG WORD)

Delete a symbol forward, skipping over any intervening delimiters.

Deleted symbol does not go to the clipboard or kill ring.

With ARG being positive number N, repeat that many times.

With ARG being Negative number -N, repeat that many times in
backward direction.

See ‘sp-forward-symbol’ for what constitutes a symbol.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-delete-word is an interactive compiled Lisp function in ‘smartparens.el’.

(sp-delete-word &optional ARG)

Delete a word forward, skipping over intervening delimiters.

Deleted word does not go to the clipboard or kill ring.

With ARG being positive number N, repeat that many times.

With ARG being Negative number -N, repeat that many times in
backward direction.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-backward-kill-symbol is an interactive compiled Lisp function in
‘smartparens.el’.

(sp-backward-kill-symbol &optional ARG WORD)

Kill a symbol backward, skipping over any intervening delimiters.

With ARG being positive number N, repeat that many times.

With ARG being Negative number -N, repeat that many times in
forward direction.

See ‘sp-backward-symbol’ for what constitutes a symbol.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-backward-kill-word is an interactive compiled Lisp function in
‘smartparens.el’.

(sp-backward-kill-word &optional ARG)

Kill a word backward, skipping over intervening delimiters.

With ARG being positive number N, repeat that many times.

With ARG being Negative number -N, repeat that many times in
backward direction.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-backward-delete-symbol is an interactive compiled Lisp function in
‘smartparens.el’.

(sp-backward-delete-symbol &optional ARG WORD)

Delete a symbol backward, skipping over any intervening delimiters.

Deleted symbol does not go to the clipboard or kill ring.

With ARG being positive number N, repeat that many times.

With ARG being Negative number -N, repeat that many times in
forward direction.

See ‘sp-backward-symbol’ for what constitutes a symbol.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-backward-delete-word is an interactive compiled Lisp function in
‘smartparens.el’.

(sp-backward-delete-word &optional ARG)

Delete a word backward, skipping over intervening delimiters.

Deleted word does not go to the clipboard or kill ring.

With ARG being positive number N, repeat that many times.

With ARG being Negative number -N, repeat that many times in
backward direction.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-delete-region is an interactive compiled Lisp function in ‘smartparens.el’.

(sp-delete-region BEG END)

Delete the text between point and mark, like ‘delete-region’.

BEG and END are the bounds of region to be deleted.

If that text is unbalanced, signal an error instead.
With a prefix argument, skip the balance check.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-kill-region is an interactive compiled Lisp function in ‘smartparens.el’.

(sp-kill-region BEG END)

Kill the text between point and mark, like ‘kill-region’.

BEG and END are the bounds of region to be killed.

If that text is unbalanced, signal an error instead.
With a prefix argument, skip the balance check.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-indent-defun is an interactive compiled Lisp function in ‘smartparens.el’.

(sp-indent-defun &optional ARG)

Reindent the current defun.

If point is inside a string or comment, fill the current
paragraph instead, and with ARG, justify as well.

Otherwise, reindent the current defun, and adjust the position
of the point.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-region-ok-p is an interactive compiled Lisp function in ‘smartparens.el’.

(sp-region-ok-p START END)

Test if region between START and END is balanced.

A balanced region is one where all opening delimiters are matched
by closing delimiters.

This function does *not* check that the delimiters are correctly
ordered, that is [(]) is correct even though it is not logically
properly balanced.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-newline is an interactive compiled Lisp function in ‘smartparens.el’.

It is bound to SPC j n, M-m j n.

(sp-newline)

Insert a newline and indent it.

This is like ‘newline-and-indent’, but it not only indents the
line that the point is on but also the S-expression following the
point, if there is one.

If in a string, just insert a literal newline.

If in a comment and if followed by invalid structure, call
‘indent-new-comment-line’ to keep the invalid structure in a
comment.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-comment is an interactive compiled Lisp function in ‘smartparens.el’.

(sp-comment)

Insert the comment character and adjust hanging sexps such
  that it doesn’t break structure.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-show-enclosing-pair is an interactive compiled Lisp function in
‘smartparens.el’.

(sp-show-enclosing-pair)

Highlight the enclosing pair around point.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

sp-highlight-current-sexp is an interactive compiled Lisp function in
‘smartparens.el’.

(sp-highlight-current-sexp ARG)

Highlight the expression returned by the next command, preserving point position.

――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
