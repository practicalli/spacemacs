I have almost everything working with conjure and neovim.  I am stuck on using vim-jack-in from within Neovim.  It starts a repl but I am stuck in the REPL log and cannot run any commands.  Is this a bug or am I missing something.
Running a REPL on the command line and then opening a Clojure file with nvim correctly connects to a running repl, so it only seems vim-jack-in approach is not working for me. (edited)
Olical:wizard:  4 days ago
That'll probably be because you're in the "terminal" mode, which is different to insert and normal.
Olical:wizard:  4 days ago
One sec
practicalli:speech_bubble:  4 days ago
Yes, it says Terminal at the bottom
Olical:wizard:  4 days ago

To map <Esc> to exit terminal-mode: >
    :tnoremap <Esc> <C-\><C-n>

Olical:wizard:  4 days ago
So terminal mode needs <c-\><c-n> to get out of it
Olical:wizard:  4 days ago
I map my <esc> as well as my jk (personal preference) mapping to that.
Olical:wizard:  4 days ago
That way it's more like a regular mode.
Olical:wizard:  4 days ago
It's a bit jarring at first though if you don't know about terminal mode, I was never a fan of that default :confused:
Olical:wizard:  4 days ago
(it caught me out the first time I saw it too)
practicalli:speech_bubble:  4 days ago
After using Spacemacs I shoud remap Esc to fd - is that in your Github config?
Olical:wizard:  4 days ago

(noremap :i :jk :<esc>)
(noremap :c :jk :<c-c>)
(noremap :t :jk :<c-\><c-n>)

it's in fennel but you can translate that to viml easily enough
Olical:wizard:  4 days ago
inoremap jk <esc>, I think?
Olical:wizard:  4 days ago
Same for cnoremap and tnoremap
Olical:wizard:  4 days ago
But yeah, fd works well too!
practicalli:speech_bubble:  4 days ago
I find the localleader key combos quick to timeout, so fail  because I am typing to slowly.  Is there a way to increase that timeout?
Or do I just need to type faster :slightly_smiling_face: (edited)
Olical:wizard:  4 days ago
Nope, there's an option!
Olical:wizard:  4 days ago
I'll grab it
Olical:wizard:  4 days ago
I think it's ttimeoutlen
Olical:wizard:  4 days ago

                        *'timeoutlen'* *'tm'*
'timeoutlen' 'tm'	number	(default 1000)
            global
    Time in milliseconds to wait for a mapped sequence to complete.						*'ttimeoutlen'* *'ttm'*
'ttimeoutlen' 'ttm'	number	(default 50)
            global
    Time in milliseconds to wait for a key code sequence to complete. Also
    used for CTRL-\ CTRL-N and CTRL-\ CTRL-G when part of a command has
    been typed.

practicalli:speech_bubble:  4 days ago
I can escape from the terminal, after running :Clj command in neovim (on a Clojure file) and use :first to switch back to the code buffer.
However, when evaluating the popup says no connection.
Opening the log with`, l v` says no nREPL port file found.
Using top in a separate terminal, a java process is started by :Clj in neovim.  So seems conjure is not connecting to the repl vim-jack-in starts.
Olical:wizard:  4 days ago
:thinking_face: if you check your current directory, is there a .nrepl-port file?
Olical:wizard:  4 days ago
(also I think :Clj opens the terminal in a new tab, you can use gt to cycle those)
practicalli:speech_bubble:  4 days ago
gt  works, thanks.
An .nrepl-port file was created with a timestamp of when I ran the :Clj  command.
Olical:wizard:  4 days ago
Oh, sorry, now hit ,cf to connect to a local port file
Olical:wizard:  4 days ago
This part will be automatic soon (:tm:), so when you eval it'll try to find a .nrepl-port file, but I haven't added that just yet I'm afraid.
practicalli:speech_bubble:  4 days ago
Success.. I have a Tonkinese cat :slightly_smiling_face:
Olical:wizard:  4 days ago
Excellent!
Olical:wizard:  4 days ago
Sorry for the confusion around the connection
practicalli:speech_bubble:  4 days ago
Its no different to the early days of Calva and Cider :slightly_smiling_face:
Olical:wizard:  4 days ago
It's automatic as you open your first Clojure file but that's all right now. On eval will be the next step
Olical:wizard:  4 days ago
Well that's good to hear!
practicalli:speech_bubble:  4 days ago
I sometimes get the error E5601: Cannot close window, only floating window would remain and cant close neovim
Olical:wizard:  4 days ago
Oh that's interesting, I've never seen that one.
Olical:wizard:  4 days ago
When is that happening?
practicalli:speech_bubble:  4 days ago
gt will get rid of it, so it seems to be that the popup isnt going away by itself when I use :Clj
practicalli:speech_bubble:  4 days ago
Switching tabs is refreshing the source code buffer I assume and forcing the floating window to go
Olical:wizard:  4 days ago
The Conjure floating window vanishes on cursor move
Olical:wizard:  4 days ago
Which can fire when you change tabs etc
practicalli:speech_bubble:  4 days ago
Yes, just noticed that :slightly_smiling_face:
practicalli:speech_bubble:  4 days ago
That makes sense.  Works just like cider inline eval results
practicalli:speech_bubble:  4 days ago
Thanks for your help with this, much appreciate.
Olical:wizard:  4 days ago
Yep, supposed to be an equivalent but with multiline, history, highlighting and editable
Olical:wizard:  4 days ago
And you're more than welcome, I want to give you a decent experience and learn where the pain points are
Olical:wizard:  4 days ago
I'll make a note to try and get that same error
practicalli:speech_bubble:  4 days ago
:q when the popup is still displayed should give you the error under the neovim status bar
Olical:wizard:  4 days ago
Yep, I had a feeling it would be that :slightly_smiling_face:
Olical:wizard:  4 days ago
I'm sure I can fix it, thanks for spotting it!!!
practicalli:speech_bubble:  4 days ago
I updated my notes on https://gist.github.com/jr0cket/6c475137ee57fbb14f9289bd76889512
Olical:wizard:  4 days ago
Ooo looks good!
Olical:wizard:  4 days ago
Thank you so much for writing it!
practicalli:speech_bubble:  4 days ago
I'll add a nicer version of the write-up to http://practicalli.github.io/clojure/clojure-editors/ and as I'll be doing a lot of videos for the next few months, I'll add a walk-through video of Conjure too (using your ascii cinema syntax guide as inspiration)
practicalli:speech_bubble:  4 days ago
The biggest challenge is yet to come though... deciding on a theme and statusbar theme :slightly_smiling_face:
Olical:wizard:  2 days ago
I had a look into the bug you mentioned but it looks like it's a neovim bug! https://github.com/neovim/neovim/issues/11440You can avoid it by either closing the HUD first or using :tabclose instead. It only happens when closing tabs with floating windows pinned to them. I can't think of a workaround right now :sob: it think it needs to be fixed in nvim.
resolritterresolritter
#11440 :close should close floating window if it would be the last one in the tab
• nvim --version:

Build type: Release
LuaJIT 2.0.5
Compilation: /usr/bin/cc -march=x86-64 -mtune=generic -O2 -pipe -fno-plt -O2 -DNDEBUG -DMIN_LOG_LEVEL=3 -Wall -Wextra -pedantic -Wno-unused-parameter -Wstrict-prototypes -std=gnu99 -Wshadow -Wconversion -Wmissing-prototypes -Wimplicit-fallthrough -Wvla -fstack-protector-strong -fdiagnostics-color=always -DINCLUDE_GENERATED_DECLARATIONS -D_GNU_SOURCE -DNVIM_MSGPACK_HAS_FLOAT32 -DNVIM_UNIBI_HAS_VAR_FROM -I/build/neovim/src/build/config -I/build/neovim/src/neovim-0.4.3/src -I/usr/include -I/build/neovim/src/build/src/nvim/auto -I/build/neovim/src/build/include
Compiled by builduser

Labels
+plan, +repro, complexity:low, enhancement, good first issue
Comments
12
<https://github.com/neovim/neovim|neovim/neovim>neovim/neovim | 23 Nov 2019 | Added by GitHub
Olical:wizard:  2 days ago
And a possible fix incoming https://github.com/neovim/neovim/pull/11938 - there's a PR anyway
BK1603BK1603
#11938 [RFC] Close all floats anchored to a window when the window is closed
Fix for issue #11440
The code currently SEGFAULTS at frame2win(win_altframe(win, NULL)) function call. The function win_altframe(win, NULL) returns a null pointer.Also using the macro FOR_ALL_WINDOWS_IN_TAB(wp, tp) with a null tp gave a segfault so I used a for loop the way I did.
Labels
WIP
Comments
25
<https://github.com/neovim/neovim|neovim/neovim>neovim/neovim | 23 Feb | Added by GitHub
practicalli:speech_bubble:  2 days ago
I can just move the cursor too :slightly_smiling_face:
I was only really experiencing that issue when I didn't have things working and I was restarting neovim all the time.   But good to know as I am sure I'll experience it again on occasion.  Thank you.
Olical:wizard:  2 days ago
Yep, that'll do it!
practicalli:speech_bubble:  2 days ago
I'll spend a bit of time over the weekend getting a bit more comfortable using Neovim and absorbing the Conjure commands.
I didnt see a way to evaluate an expression and have the result printed as a comment.  Is that part of Conjure?  I can raise a feature request if not.  I use that a lot in my broadcasts :slightly_smiling_face:
practicalli:speech_bubble:  2 days ago
I did notice the REPL log used more with Conjure (I usually have that hidden in Spacemacs), so maybe that workflow would work just as well.  Will let you know.
Olical:wizard:  2 days ago
Yeah, the log would be the first place I'd go to. All results are placed in your c register by default (I've configured mine to go to my default register so I can just hit p after an eval to get the result)You can evaluate something then press "cp to paste the result wherever you want. Or even <c-r>c while in insert mode.
Olical:wizard:  2 days ago
Also <prefix>e! will evaluate the current form and replace it with the result.
practicalli:speech_bubble:  2 days ago
I have all this neovim magic to learn, thanks :slightly_smiling_face:
Olical:wizard:  2 days ago
The only other thing I'd pile on that you may want to check out: * Set an uppercase mark (uppercase go across files and persist between nvim restarts) with mF on some form.
 * Go to another part of the file or a different file entirely
 * <prefix>emF - see that marked form get evaluated!Really handy for changing things in one area and repeatedly calling it from elsewhere.
Olical:wizard:  2 days ago
I think vim-iced adopted this feature too, I don't think any other tooling has yet :thinking_face: I think it's pretty fun and unique!
