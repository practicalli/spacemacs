# Thoughts on moving from Vim to Spacemacs

Do you think it's worth for a beginner developer who still doesn't know much about the big frameworks to spend time learning Emacs?

Especially if said developer has been using Emacs' fabled competitor for over four years now? :sweat_smile:

I was searching for what the best free IDE is, and ended up finding your answer in quora about emacs
https://www.quora.com/What-is-the-best-free-IDE/answer/John-Stevenson-12

Ever since I did a few projects in Racket I have been interested in the lisp scheme syntax, and been dancing with the idea of learning Emacs. But since I found my first job, I've been jumping from (the introduction) of one technology or another because I needed them for my role. Now I'm about to be furloughed, and the dance of learning Emacs seems much more attractive, but I don't know if it's the right time for this.So I'd really appreciate to hear your take on this dilemma. :)

Short answer:  Yes, definately learn Emacs, start with Spacemacs develop branch and read my book https://practicalli.github.io/spacemacs/

Longer answer:
It sounds like you have the agony of choice, which is a very real problem in our modern world.  There are so many things you can do with your time.  I can offer my experiences as a guide, but only you know how best to spend your time :slightly_smiling_face:

I would certainly recommend looking at Emacs and specifically Spacemacs if you have the time.  There are lots of features you can just drop into Emacs that can help with a wide range of languages.  Arguably Emacs has the most up to date support for the vast majority of languages (with LSP there is even excellent support for Java).

Using a community configuration like Spacemacs helps you stand on the shoulders of giants and use everyones experience to do more.  So the learning curve for Emacs can be very shallow.

I assume you refer to Vi/Vim as the alternative to Emacs.  I find the Vi style editing (multi-modal) to be amazingly productive and feel lost without it. Ironically, I only learnt Vi style editing when I started using Spacemacs.

I suggest reasons to move away from a specific Vim tool and to Emacs are

1) vimscript (some people find this less than productive) and Emacs lisp is a very effective and elegant programming language with which to configure your editor.

2) Arguably there are more features / better language support generally available in Emacs than Vim

The single biggest change in moving from Vim to Emacs is that you run Emacs once and keep it open all the time.  If you keep closing and opening Emacs, as is often the case with vim, its likely you will find Emacs slow and will be less likely to want to use Emacs instead of Vim.  You can set up a persistent server or daemon process for Emacs too, then use emacsclient command.

If you use a community configuration for Emacs (Spacemacs, Prelude, Doom) then this can save a lot of time setting up the basics.  Using Spacemacs I have discovered lots of very useful features that speed up my work that would have taken a lot longer to discover and configure on my own.

Spacemacs has become my config of choice, so much so I wrote (am still writing) a book on using this.  Initially for Clojure development, but has broadened to a more general Spacemacs / Emacs guide.
https://practicalli.github.io/spacemacs/

If you do try Spacemacs, I highly recommend using the develop branch.  It is quite stable and has all the latest bug fixes and new features like Language Server Protocol which many languages are adopting (Clojure already has CIDER which already does a lot more than LSP).
