# Create a Clojure Project

Clojure projects are typically created with the Clojure build automation tool called [Leiningen](https://leiningent.org).

You can create a new Leiningen project by switching to a terminal window or using a shell within an Emacs buffer.


## Command Line Terminal

Open a terminal app and run one of the following Leiningen commands.  The first command uses the default template, the second command will use the specified template to create the project.

```
lein new project-name

lein new template-name project-name
```

<hr />

## `eshell` - The Emacs Shell

Emacs can run a shell inside a buffer window so you never have to leave Emacs.  See the next section on [using Emacs shell](using-emacs-shell.html) to configure and use a shell, including the use of other shells such as zsh.


## Adding files to your project 

See the section on [adding a new file](new-file.html) when you need to add more namespaces to your project.
