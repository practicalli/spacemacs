# Literate Programming

[From Wikipedia](https://en.wikipedia.org/wiki/Literate_programming)

> Literate programming is an approach to programming introduced by Donald Knuth in which a program is given as an explanation of the program logic in a natural language, such as English, interspersed with snippets of macros and traditional source code, from which a compilable source code can be generated.

## Why Literate Programming

In Spacemacs and Clojure development, it means you could write a document explaining your project or library and include code that can execute and give results in the document itself.

So, if you wanted contributors to help with you open source project or are on-boarding a developer onto you team, you could give them a literate programming document that explains how all the important aspects work, including real code examles that they can experiment with.

## How to do it 

Emacs has Org-mode with can do amazing things with documents, simply open a file with a `.org` filename extension.  Alternatively you can start the org-mode major mode with the command `M-x org-mode`

Emacs also has bable, which can take code and run it in an Emacs buffer of the correct major-mode for the language and automoaticaly return the result back to the org-mode file.

## Setting up Literate Programming in Spacemace

Include the org-mode layer in your `~/.spacemacs` configuration

