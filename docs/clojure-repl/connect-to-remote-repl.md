![Connecting to a remote REPL with a Clojure aware editor](https://raw.githubusercontent.com/practicalli/graphic-design/live/clojure/clojure-remote-repl-terminal-editor.png)

# Connect to a remote REPL with a Clojure aware editor
Using a remote REPL can provide a collaborative coding environment as well as a means for working within remote environments (docker images, cloud servers, etc).

Running a remote REPL can also provide longevity to the process, as many clients (editors, ssh terminals) can connect to the REPL over time, disconnecting from the running process without interrupting the process.  This provides a very resilient way of running a REPL.

[practicalli/clojure-deps-edn]({{book.P9IClojureDepsEdnInstall}}) provides many aliases to configure a REPL to work with other community tools.  These aliases are easier to manage when running a REPL outside of an editor which automatically injects its own configuration.  This configuration can be installed into the remote environment and ideally added into the server build process.


## Establish a remote environment
A small Virtual Private Server (VPS) is enough for a remote Clojure environment.

> [How to set up a f1-micro VPS on Google Cloud](https://medium.com/@hbmy289/how-to-set-up-a-free-micro-vps-on-google-cloud-platform-bddee893ac09)

* Install [Clojure CLI tools](https://practical.li/clojure/clojure-cli/install/) and [practicalli/clojure-deps-edn configuration](https://practical.li/clojure/clojure-cli/install/community-tools.html)
* Git Client
* SSH server
* Set up user account
* Generate a permissions file, `.pem` from the server (TODO: how to generate .pem files)

| Services                                                           | vCore      | RAM   | SSD  | Transfer | Monthly |
|--------------------------------------------------------------------|------------|-------|------|----------|---------|
| [Google Cloud f1-micro VPS](https://cloud.google.com/compute/docs) |            |       |      |          |         |
| [Ionos](https://www.ionos.co.uk/servers/vps)                       | 1          | 512Mb | 10Gb |          | £1      |
| [Amazon Lightsail](https://aws.amazon.com/lightsail/)              | 1          | 512Mb | 20Gb |          | $3.50   |
| [Time4VPS](https://www.time4vps.com/linux-vps/)                    | 1 x 2.6GHz | 2Gb   | 20Gb | 2TB      | E3.99   |


## Configure local SSH connection
Save the `.pem` file to `~/.ssh/` directory (or your preferred location).

Edit the `~/.ssh/config` file (create the file if needed) and add a host configuration for the remote server.

Add the IP address of the remote server to `HostName`.

Use the `LocalForward` for the port used by the nREPL server.

```
Host remote-clojure-server
  HostName 99.99.99.99
  IdentityFile ~/.ssh/remote-server.pem
  User ubuntu
  PasswordAuthentication yes
  LocalForward 7888 localhost:7888
  Port 22
```


## Configure Emacs to listen to nREPL port
Emacs can be used to connect to a running Clojure project that has been run with the nREPL and Cider middleware, e.g. `:middleware/cider-clj` from [`practicalli/clojure-deps-edn`](http://practical.li/clojure/clojure-cli/install/community-tools.html)

Edit your Emacs `~/.emacs.d/init.el` file and add the following configuration.

For Spacemacs, edit `~/.spacemacs` and add the following code to `dotspacemacs/user-config`

```elisp
  (setq nrepl-use-ssh-fallback-for-remote-hosts t)
```


## Start a REPL on a remote server
The majority of [Clojure aware editors](https://practical.li/clojure/clojure-editors/) can connect to an external REPL using the nREPL protocol.  Emacs CIDER, VSCode Calva and NeoVim Conjure all use nREPL and the Cider middleware.

[practicalli/clojure-deps-edn]({{book.P9IClojureDepsEdnInstall}}) defines the `:middleware/clj` alias that includes several libraries required for the nREPL connection between CIDER and the REPL.

SSH into the remote server.

Clone an existing project with Git, or create a new project with `:project/new` alias

Change to a Clojure project

Start the REPL using the cider middleware on the same port as defined in `LocalForward` in the SSH configuration, using the `-p` to set the port number.

Open a terminal in the root directory of a Clojure project and run a non-interactive REPL process
```shell
clojure -M:middleware/cider-clj -p 7888
```

The REPL will start along with an nREPL server, showing the connection details.

![Clojure Terminal REPL UI with Rebel readline](/images/clojure-repl-terminal-rebel-nrepl.png)

An `.nrepl-port` file is created in the root of the Clojure project, containing the port number the nREPL server is listening upon.


> #### Hint::Using a REPL terminal UI
> For a rich terminal REPL experience, start the REPL with rebel readline as well as nREPL and CIDER libraries.
```
clojure -M:repl/rebel-nrepl
```


## Connect to REPL from Spacemacs
[Tramp](https://www.emacswiki.org/emacs/TrampMode) enables Spacemacs to be used to open remote files as if they were local files, using an SSH connection to the remote server.

`SPC f f` to open a file and enter an ssh address to access the Clojure project files on the remote server

```
/ssh:username@remote-server-name:~/project/deps.edn
```

`, '` to call `sesman-start` and choose `cider-connect-clj` which should find the remote host and port

![Clojure Terminal REPL UI with Rebel readline](/images/spacemacs-clojure-cider-connect-clj.png)

Confirm the host name, typically `localhost` when running the REPL locally

![Clojure Terminal REPL UI with Rebel readline](/images/spacemacs-clojure-cider-connect-host.png)

Confirm the port number the nREPL server is listening too

![Clojure Terminal REPL UI with Rebel readline](/images/spacemacs-clojure-cider-connect-port.png)

Spacemacs is now connected to the REPL and Clojure code can be evaluated in the source code buffers.
