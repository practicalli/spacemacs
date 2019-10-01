# CIDER Debugger

`, d b` sets breakpoints on the expression under the cursor.  If the expression is a function definition, then it is marked as instrumented by the debugger along with any calls to that function.



> #### Hint::Skip over lazy functions
> `o` (out) will jump out of evaluating an expression.
>
> Use out to jump over evaluating code that has functions generating lazy infinite sequences, such as `range` or `cycle`.  The debugger will then evaluate those functions in their outer expression where it should be safe to do so.
