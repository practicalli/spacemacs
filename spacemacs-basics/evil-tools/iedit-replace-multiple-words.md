# iedit - replace multiple words

-  manual selection of several words then replace:

`v w w SPC s e S "toto" ESC ESC`

-  append text to a word on two lines: `v i w SPC s e J i "toto" ESC ESC`

-  substitute symbol /with expand-region/: `SPC v v e S "toto" ESC ESC`

-  replace symbol with yanked (copied) text /with expand region/: `SPC v
   e p ESC ESC`
