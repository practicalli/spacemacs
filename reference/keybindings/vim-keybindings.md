# Useful Vim key bindings

## movement

<pre>
0 - beginning of line
^ - beginning of non-whitespace
$ - end of line
9j - move down 9 lines
w - move forward by word
b - move backward by word
gg - first line
G - last line
C-u - up half page
C-d - down half page
f/ - move forward to first "/" character
t/ - move forward right before the first "/" character
; - repeat that command again
H - head of the screen
M - middle of the screen
L - last of the screen
} - move forward by paragraph or block
{ - move backwards by paragraph or block
* - search for word under the cursor
    n - search again forward
    N - search again backwards
# - search backwards for word under cursor
/ - search forward
? - search backward
% - find matching brace, paren, etc
ma - mark a line in a file with marker "a"
`a - after moving around, go back to the exact position of marker "a"
'a - after moving around, go back to line of marker "a"
:marks - view all the marks
'' - go to the last place you were
[{ - jump back to the "{" at the beginning of the current code block
</pre>

## editing

<pre>
x - delete char under cursor
X - delete char before cursor
A - add to end of line
I - insert at the beginning of the line
dd - delete line
D - delete from cursor to end of line
di' - delete text inside single quotes
yy - copy line
Y - copy from cursor to end of line
cc - change line
C - change from cursor to end of line
cit - change text inside html tag
ci' - change text inside single quotes
ci{ - change text inside curly brackets.
ci... - etc
p - paste after cursor
P = paste before cursor
o - add line below
O - add line above
. = repeat last comment
r - replace character
R - replace. (overwrite) (good for columns of text)
J - join line (cursor can be anywhere on line)
</pre>

## visual mode

<pre>
v - visual char mode
V - visual line mode
C-v - block visual mode
</pre>

<pre>
v - visual char mode
V - visual line mode
C-v - block visual mode
</pre>
