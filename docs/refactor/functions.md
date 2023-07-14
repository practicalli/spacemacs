# Refactor functions

The symbol highlight transient state and iedit tools can be used to make concurrent changes to multiple instances of the same piece of text, eg. a function name, a local let binding name, a def name, etc.

We can use narrowing to just make changes within in a function or any selected region of text

Move the cursor to the function you wish to refactor

++spc++ ++"n"++ ++"f"++ to narrow to that function.  The buffer updates and only shows the text of that function, preventing changes happening elsewhere in the code.

++"*"++ or ++"#"++ to select a function name using the symbol highlight transient state on the current text under the cursor.  This highlights all instances of that function name in the namespace.

++"e"++ starts iedit state, turning the cursor red.

Make the changes to the highlighted text and all instances of that text will change.  You can use Normal and Insert mode editing commands within iedit.

++esc+++ or ++"f"++ ++"f"++ to leave iedit mode (twice if you are in Evil Insert).

++spc++ ++"n"++ ++"w"++ to return to the full view of the buffer.

!!! HINT "Narrowing a region of text"
    You can select a range to narrow to using ++"v"++ for the visual select mode.  Then use ++spc++ ++"n"++ ++"r"++ to narrow to just the selected text for editing.
    ++spc++ ++"n"++ ++"w"++ to return to the full view of the buffer.


## Refactor similar function calls

++tab++ allows you to quickly change the name of a function call to one that is similar.

For example, if you have used a call to `reduce` instead of `reductions` or other similarly named functions, pressing `TAB` with the cursor on `reduce` will display a popup listing alternative functions

![Spacemacs - refactor function call name using the TAB key](https://raw.githubusercontent.com/practicalli/graphic-design/live/editors/spacemacs/screenshots/spacemacs-refactor-function-call-tab.png)
