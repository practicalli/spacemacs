# clj-kondo via Language Server Protocol (LSP)
For environments where the `clj-kondo` binary does not run, configure clj-kondo-lsp-server as an language server protocol (LSP) server.  This provides the same features as [using clj-kondo as a linter](/install-spacemacs/enhance-clojure-experience.md).
Example configuration is provided in [practicalli/spacemacs.d]({{ P9ISpacemacsD }})


## A process for each project
When opening a Clojure project, a prompt asks if the project should be imported. Every imported project will spawn an LSP process. LSP will remember which projects are imported and spawns an LSP process if Emacs is restarted, adding a few seconds to the startup time.

![Spacemacs Clojure LSP import project prompt](/images/spacemacs-clojure-lsp-project-import-prompt.png)

`SPC a p` calls the `list-process` command which includes all the `clojure-lsp` processes if you are concerned about resource usage, although this is very low.  `j`/`k` navigates the list of processes, `d` deletes a process and `q` quits the process list browser.

## UI differences
Using clj-kondo via LSP shows the text of its messages on the right hand side of the buffer when you move the cursor over an error. When using clj-kondo as a linter, the messages are shown in a popup.


## Install and Configure clj-kondo via LSP
[Download the clj-kondo-lsp-server-standalone.jar](https://github.com/borkdude/clj-kondo/releases/)

Save jar to the path to `~/.local/apps/clj-kondo-lsp-server-standalone.jar` or any preferred location.

Create a script called `clojure-lsp-server-clj-kondo` and add the java command to run the LSP server, updating the path to the .jar file if required.
```shell
#!/bin/sh
java -jar ~/.local/apps/clj-kondo-lsp-server-standalone.jar
```

`SPC f e d` in Spacemacs to open the configuration file

`SPC s s` to locate `dotspacemacs-configuration-layers`

Add `lsp` to the layers list

`SPC s s` to locate `dotspacemacs/user-config`

Add the following code:

```elisp
 (use-package lsp-mode
   :ensure t
   :hook ((clojure-mode . lsp))
   :commands lsp
   :custom ((lsp-clojure-server-command '("clojure-lsp-server-clj-kondo")))
   :config (dolist  (m '(clojure-mode clojurescript-mode))
             (add-to-list 'lsp-language-id-configuration `(,m . "clojure"))))
```

`SPC f s` to save the file and `SPC q r` to restart Emacs.  This will download the required packages and load in the LSP configuration in order.
