# Emacs development

> #### TODO::work in progress, sorry
> Just very rough notes at the moment

there are two aspects to Emacs Lisp: The basic language itself, and the interaction with Emacs. Separate these two in your mind. Focus first on the former (should not be too hard as you learned Lisp in the past). Use sites like Excercism to practice.

Once you have a grip on the basics (loops, functions, variables, conditionals, etc), move on to the aspects that involve Emacs itself (changing text, switching buffers, etc). This is vast, and you'll likely get lost in a sea of details. There are a few things you should understand really well, as you'll use them often. They are:

    interactive
    save-excursion
    save-restriction
    hooks
    advising functions
    with-current-buffer

Once you understand these, instead of spending all your time reading the ELisp reference, think of simple problems you have with Emacs that you want to write and try solving them with Elisp. You'll likely need help on some of the steps, and that's where Google can help you.

Examples of problems I solved to practice my Elisp:

    When you use org-capture, and you write text in the last line of the capture buffer, it does not put a newline at the end, and so if I had any headlines after the capture position, that headline would no longer be a headline. The fix was to make a hook that checks if there are any newlines, and if not, add one at the end of the capture.

    When I capture and refile in one step, it doesn't save the file the entry was refiled to. But if I capture without refiling, it does. I fixed this inconsistency.

    When writing minutes during a meeting (in an org file), if a TODO for someone comes up, I want to do a capture that will look for a headline called TODOs (under the top level headline I am in) and place the TODO in there. Each meeting has its own TODOs headline, and it should go to the one for the current meeting in the file. This involved writing a function that goes up the tree to the top level, and looks for a child called TODOs.

    Kill all buffers of a certain mode (there may be an internal function that already does this, but I did not know it).

Finally, make sure you know the following keybindings:

    C-x C-e (evaluate expression)
    C-h v (look up the meaning and value of a variable)
    C-h f (look up the description of an inbuilt function).


## Some useful functions

    (info "(elisp) Lisp Data Types")

    too many to easily count :)

    (info "(elisp) Buffers")

    way too many to easily count

    (info "(elisp) A Sample Function Description")

    yes: (defun thing (a b &rest l) …)

    (info "(elisp) Backquote")

    ` and , are pretty simple once you get the hang of them. try them out :) (defmacro simple (a b c) `(,b ,a ,c))

i don't think reddit is the best place for that kind of documentation. you should read the elisp info manual: (info "elisp").



## Resources

* [Learn Emacs Listp while customizing Emacs](http://emacslife.com/emacs-lisp-tutorial.html)
* [Learning Emacs Lisp](https://github.com/jedcn/learning-elisp) - Elisp code examples for common tasks
* [Ergo Emacs - How to learn Emacs Lisp](http://ergoemacs.org/misc/what_to_do_with_emacs_lisp.html)
* [Ergo Emacs Visual Tutorial](http://ergoemacs.org/emacs/elisp.html)
* [Exercisim: Lisp track](https://exercism.io/my/tracks/emacs-lisp)
* [An Introduction to Programming in Emacs Lisp](https://www.gnu.org/software/emacs/manual/html_node/elisp/index.html) - gnu.org
* [An introduction to Programming in Emacs Lisp](https://www.gnu.org/software/emacs/manual/html_node/eintr/) - comes with Emacs, may be an additional package (C-h i or `SPC h T e`)
* [Emacs Lisp Development Tips with John Wiegley](https://sachachua.com/blog/2015/04/2015-04-08-emacs-lisp-development-tips-with-john-wiegley/) - Sacha Chua
* [Learn Emacs Lisp](https://www.emacswiki.org/emacs/LearnEmacsLisp) - Emacs Wiki
* [Learn elisp in Y minutes](https://learnxinyminutes.com/docs/elisp/) LearnXInYMinutes.com
* [Emergency Elips](http://steve-yegge.blogspot.com/2008/01/emergency-elisp.html)
* [Emacs Tutor 2](http://tuhdo.github.io/emacs-tutor2.html)

http://harryrschwartz.com/2014/04/08/an-introduction-to-emacs-lisp.html

https://yoo2080.wordpress.com/2014/07/04/it-is-not-hard-to-read-lisp-code/

https://yoo2080.wordpress.com/2014/07/20/it-is-not-hard-to-edit-lisp-code/

https://web.archive.org/web/20140912224825/http://cjohansen.no/an-introduction-to-elisp

http://ergoemacs.org/emacs/elisp.html




## Hacking CIDER
* [CIDER overview](https://docs.cider.mx/cider/0.26/index.html)
* [Hacking CIDER](https://docs.cider.mx/cider/0.26/contributing/hacking.html)


## General Lisp resources
* [Land of Lisp](http://landoflisp.com/) (commercial)
* [Practical Common Lisp](http://gigamonkeys.com/book/)
