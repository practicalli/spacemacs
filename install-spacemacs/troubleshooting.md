# Troubleshooting

`SPC q r` (`restart-emacs`) is a quick way to resolve some issues, especially when installing multiple packages.  Some Emacs packages depend on others being present, which may not be the case when first installing.

`SPC f e D` (`ediff`) to compare your `.spacemacs` configuration with the default Spacemacs configuration. `j` and `k` to navigate the differences, `b` to copy a change from the Spacemacs configuration to your own.  `q` to quit comparing, `?` for more help.

[Switch to the Spacemacs develop branch](switch-to-develop.md) to get the latest fixes and features (until version 0.300 is release to master).

Read the latest docs at [develop.spacemacs.org](https://develop.spacemacs.org/) or the [layer specific README.org files on GitHub](https://github.com/syl20bnr/spacemacs/tree/develop/layers)

## Reviewing issues
View the [Spacemacs issues on GitHub](https://github.com/syl20bnr/spacemacs/issues) before submitting a new issue.  You may find a fix to your problem, even if only a temporary solution.

`SPC h d s` will generate system information in the kill ring, so you can confirm an existing issue with meaningful data, helping to identify the root cause.

Also review the GitHub issues for a specific package that may be causing issues.  A search for `emacs package-name` should help you find its GitHub repository.

## Ask the community
If you are unsure if you have found an issue, or do not understand why some behavior is happening, then ask the Spacemacs community, they are very helpful and friendly.

* [Spacemacs Gitter chat](https://gitter.im/syl20bnr/spacemacs) - any aspects of Spacemacs
* [#Spacemacs on Clojurians Slack community](clojurians.slack.com/messages/spacemacs) - Clojure specific discussions ([create a free account](http://clojurians.net/))

## Reporting Issues
`SPC h I` will create an issue on the Spacemacs GitHub repository that included the basic Spacemacs environment details, helping others understand and resolve the issue effectively.

> #### Hint::Read how to make a great bug report
> https://github.com/syl20bnr/spacemacs/wiki/Debugging#how-to-make-a-great-bug-report

Please do not raise an issue directly via the GitHub website.  If you do, you will slow down the response to this issue and the first response to your issue will be to provide system information.

## Specific Package Issue
Delete a package from the `~/.emacs.d/elpa` directory if it does not seem to be working, is generating warnings or errors or is simply not working correctly.

`SPC q r` to restart Spacemacs and download the package again.

## Issues after package update
If multiple packages are causing issues after an update, or you are short on time to diagnose an issue, then rollback to the packages used before the update.

`SPC b h` to visit the Spacemacs home page and select **Rollback Package Update**

![Spacemacs - Home buffer - Rollback package update](/images/spacemacs-home-rollback-package-update.png)

## Pinning packages / using a recipe
Packages are installed from MELPA, which builds daily packages from the latest commit in their online repository (GitHub/GitLab).

If a newly installed package has an issue, rather than rollback all the packages upgraded, configure a package recipe to point to an older version of the package.

For example, pin CIDER to an earlier version by adding the following recipe to `dotspacemacs/additional-packages`

```elisp
(cider :location
   (recipe :fetcher github
           :repo "clojure-emacs/cider"
           :commit "ae376429a8cf22b82a9e18ff844bdfbe5fc7ecc1"))
```

Delete the package from `~/.emacs.d/elpa/` directory and reload the Spacemacs configuration, `SPC f e R` (or restart Emacs `SPC q r`)


## Scorched Earth approach
Delete `~/.emacs.d/elpa` director and `SPC q r` to restart Spacemacs.  This will remove any complied Emacs packages that may have become corrupted or replace older packages that are now causing issues.

As there are 100's of packages, the scorched earth approach of just deleting them and downloading fresh copies can be surprisingly effective at resolving issues with very little effort.

## Debugging Spacemacs
The [Spacemacs debugging page](https://github.com/syl20bnr/spacemacs/wiki/Debugging) explains concepts needed to debug Spacemacs and to report issues in an useful way.

* [Debugging memory issues](https://www.emacswiki.org/emacs/EmacsMemoryDebugging)

## Issues with spawned processes

`SPC a p` (`list-processes`) lists the processes started by or from within Spacemacs, eg. for Clojure its `nrepl-server` and `nrepl-connection` processes when running `cider-jack-in`. Use `SPC a P` (`proced`) to see all operating system processes.

![Spacemacs Applications - Process list](/images/spacemacs-application-processes-buffer.png)

`d` to immediately kill a process (no prompt is given to confirm kill action).

The process list shows the command used to start the process, which can be useful in diagnosing issues.

`RET` on buffer name in the process list will open that buffer in a separate window.

If there are problems shutting down the REPL, `, s q q` (`cider-quit`),  check to see if the CIDER nrepl-server or nrepl-connection process has been killed.

`q` to quit the process list buffer.

> #### Hint::`SPC a P` lists all operating system processes
> `SPC SPC helm-top` runs a process list

## Profiling Emacs
`SPC SPC profiler-start` will start monitoring how much CPU and memory resources that different parts of Emacs are using.  The profiler is especially useful if there are slow running commands or Emacs is unresponsive at times.

`SPC SPC profiler-report` displays buffers showing the results of profiling Emacs.

[![Spacemacs Emacs Profiler report](/images/spacemacs-profiler-report-memory-cpu.png)](/images/spacemacs-profiler-report-memory-cpu.png)

`SPC SPC profiler-stop` to stop profiling Emacs.
