# Vim - beyond :?


## guides

https://vim-adventures.com/
http://www.openvim.com/
https://www.shortcutfoo.com/
http://yannesposito.com/Scratch/en/blog/Learn-Vim-Progressively/
http://yannesposito.com/Scratch/en/blog/Learn-Vim-Progressively/
http://www.vimgenius.com/
https://www.labnol.org/internet/learning-vim-for-beginners/28820/
http://codecondo.com/vim-commands/
https://scotch.io/tutorials/getting-started-with-vim-an-interactive-guide


** Movement
j,k,h,l - move down,up,left,right
gg, G - top / bottom of file
C-v / u  - page up/down

$ / 0 ^ - end / beginning of line (like regex)

i - insert
p - paste
o - move to line below and in insert mode
O - move above line and in insert mode
shift-o
Ctrl-j / Shift-j - split line at cursor / join next line to current 
f l - jumps to next instance of the l character (swap l for any character)

## spacemacs specific
Ctrl-j/k add/delete new line
Ctrl-a - paste

## not in spacemacs
y - yank
:explore
C-a i/d - increasing/decreasing a number 


w / b - move by word forward / backwards
Shift-w / b ????
e - to the end of the current word, INCLUDING the last charactera.

d d/w/$ - delete line/word/
d i " - delete inside the double quotes
d i w - delete inside word
d t " - delete until the double quotes
d Shift-t " - delete backwards until double quotes 
d i t - will delete all contents inside an html tag


x - kill

r - replace character

~ - uppercase

c w - change word
cc - change the line

v - visual mode
shift-v - visual mode line by line
ctrl-v - visual mode in region

edit-multiple-lines (visual mode)
v
shift-i
type your comment
Enter (puts the comment at the start of the line)

multi-highlight (visual mode)
v 
/
name of text you want to highlight
Enter
n

:registers - shows the actions that you have done 




## functional callisthenics

keep side effects at the top level (api calls, db calls)

no mutable state (except where its necessary)
functions with only one argument (well only if its a collection)
implicit recursion over explicit recursion
tail recursion
everything named
use intermediate values (local name bindings)
dont abbreviate
