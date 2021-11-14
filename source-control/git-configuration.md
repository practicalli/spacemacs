# Git Configuration

Git uses the `~/.gitconfig` configuration file for user level settings.

It is useful to add your identity so that each commit you make is associated to you.  Ideally, this identity should be the same as used on GitHub, GitLab and BitBucket accounts.


## Add an identity to Git configuration

Define your git identity using the following commands in a terminal window

```shell
git config --global user.name "practicalli"

git config --global user.email github@practical.li
```

These commands update the `[user]` section of the `~/.gitconfig` file, automatically creating that file if it does not exist.

![Git Configuration file - user name and email](https://raw.githubusercontent.com/practicalli/graphic-design/live/spacemacs/screenshots/spacemacs-git-configuration-user-private-email.png)

## Using a private email address

To avoid sharing your real email address (to minimise spam), consider using a private email address

In your GitHub account, [visit the email settings](https://github.com/settings/emails) and tick **Keep my email addresses private**.

A new email of the form `250870+practicalli-john@users.noreply.github.com` is created which must be set as your user email address

```shell
git config --global user.email "250870+practicalli-john@users.noreply.github.com"
```

For additional security, select the option **Block command line pushes that expose my email** to prevent commits being pushed to GitHub using your public email address.
