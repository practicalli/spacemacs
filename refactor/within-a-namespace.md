# Refactor within a namespace

The symbol highlight transient state and iedit tools can be used to make concurrent changes to multiple instances of the same piece of text, eg. a function name, a local let binding name, a def name, etc.


## Changes throughout the namespace

`*` or `#` to open symbol highlight transient state on the current text under the cursor.  This highlights all instances of that text in the namespace.

`e` starts iedit state, turning the cursor red.

Make the changes to the highlighted text and all instances of that text will change.  You can use Normal and Insert mode editing commands within iedit.

`ESC` or `fd` to leave iedit mode (from Evil normal mode, so if you are in Insert mode you will need to do this twice).


> #### TODO::Add video

---

> #### Hint::Edit just a function or text region
> Use narrowing before selecting / searching to be more selective in what text is show and therefore highlighted and changed.  E.g. if you just want to [change a specific function](within-a-function.md).




## Alternatives - multiple cursors

> #### TODO::work in progress, sorry
> Any feedback on using multiple cursors is most welcome.
