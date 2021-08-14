# Understanding Clojure errors

> #### TODO::work in progress, sorry
> Pull requests are welcome


## Navigate CIDER error reporter

> TODO: add video of navigating the cider errors buffer


## Diagnosing Classpath issues

`clojure -Spath > project-classpath.txt` will write the output the project classpath to the `project-classpath.txt` file.  The command will first download project dependencies that are not currently satisfied

The output is a single line of text, with each path in the class path separated by a colon character, `:`

`SPC f f` to open the file in Spacemacs

Separate the classpath output into individual lines with this vim command.  This makes the file easier to read and run diff comparisons upon.

```vim
:s/:/\n/g
```

> #### Hint::Diff - compare differences between files
> `SPC D f f` and selecting two files will open `ediff` and show a comparison.   Navigate the changes using `j` and `k`.  `a` to copy a change from the left buffer to the right buffer, `b` to copy right to left.
