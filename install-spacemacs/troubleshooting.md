# Troubleshooting

`SPC q r` is a quick way to resolve some issues, especially when installing multiple packages.  Some Emacs packages depend on others being present, which may not be the case when first installing.

Use the [Spacemacs develop branch](switch-to-develop.md) to get the latest fixes and features (until version 0.300 is release to master).

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
If a package has an issue in its newest version, you can configure spacemacs to use an older version of the package.

* [Spacemacs - managing broken Emacs packages](http://jr0cket.co.uk/2017/03/spacemacs-managing-broken-emacs-packages.html)

## Debugging Spacemacs

The [Spacemacs debugging page](https://github.com/syl20bnr/spacemacs/wiki/Debugging) explains concepts needed to debug Spacemacs and to report issues in an useful way.
