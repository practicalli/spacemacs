# Interrupting Evaluations

`, e i` (`cider-interupt`) will stop the current evaluation, useful if that evaluation is taking a long time.  This may occur when processing a large data set or stuck in a non-terminating loop.


## REPL status in buffer mini-bar

The REPL buffer shows a [visual indicator of evaluation](https://docs.cider.mx/cider/usage/code_evaluation.html#display-spinner-during-evaluation), known as a spinner e.g. `[=== ]`, in the mode line when the current evaluation is taking more than one seconds to complete.

The visual indicator spinner shows the REPL is actively processing an evaluation, although is not an indicator of how much progress has been attained or time left for completion.

![Spacemacs Clojure - CIDER REPL buffer spinner examples](https://raw.githubusercontent.com/Malabarba/spinner.el/master/all-spinners.gif)


### Configure spinner type

`cider-eval-spinner-type` defines the type of visual indicator to use in the REPL buffer mini-bar for long running evaluations.

`SPC h v spinner-types` to see the available types.  The default value `'progress-bar`

`cider-eval-spinner-delay` defines in seconds when to show the spinner. The default is 1 second.

`cider-show-eval-spinner` set to `t` enables the spinner, set to `nil` disables the spinner (default `t`).


### Spinner types available

`SPC h v spinner-types` show the following available [spinner.el types](https://raw.githubusercontent.com/Malabarba/spinner.el/master/all-spinners.gif)

```lisp
((3-line-clock .
               ["┤" "┘" "┴" "└" "├" "┌" "┬" "┐"])
 (2-line-clock .
               ["┘" "└" "┌" "┐"])
 (flipping-line .
                ["_" "\\" "|" "/"])
 (rotating-line .
                ["-" "\\" "|" "/"])
 (progress-bar .
               ["[    ]" "[=   ]" "[==  ]" "[=== ]" "[====]" "[ ===]" "[  ==]" "[   =]"])
 (progress-bar-filled .
                      ["|    |" "|█   |" "|██  |" "|███ |" "|████|" "| ███|" "|  ██|" "|   █|"])
 (vertical-breathing .
                     ["▁" "▂" "▃" "▄" "▅" "▆" "▇" "█" "▇" "▆" "▅" "▄" "▃" "▂" "▁" " "])
 (vertical-rising .
                  ["▁" "▄" "█" "▀" "▔"])
 (horizontal-breathing .
                       [" " "▏" "▎" "▍" "▌" "▋" "▊" "▉" "▉" "▊" "▋" "▌" "▍" "▎" "▏"])
 (horizontal-breathing-long .
                            ["  " "▎ " "▌ " "▊ " "█ " "█▎" "█▌" "█▊" "██" "█▊" "█▌" "█▎" "█ " "▊ " "▋ " "▌ " "▍ " "▎ " "▏ "])
 (horizontal-moving .
                    ["  " "▌ " "█ " "▐▌" " █" " ▐"])
 (minibox .
          ["▖" "▘" "▝" "▗"])
 (triangle .
           ["◢" "◣" "◤" "◥"])
 (box-in-box .
             ["◰" "◳" "◲" "◱"])
 (box-in-circle .
                ["◴" "◷" "◶" "◵"])
 (half-circle .
              ["◐" "◓" "◑" "◒"])
 (moon .
       ["🌑" "🌘" "🌗" "🌖" "🌕" "🌔" "🌓" "🌒"]))
```
