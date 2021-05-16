# Changing commit History

Existing commit history can be modified with [squash](commit-squash.md), [fixup](commit-fixup.md) and [augment](commit-augment.md).

The need to change history in Git should be minimal and should limited to fixing errors made in previous commits on your local repository.

Here are a few simple tools to help you change your local history.

> #### Hint:: Consensual rewriting of shared remote history
> Please consider the impact of other people working with a shared Git repository before changing the existing git commit history.  If you really must change a shared git history, seek consent from the people you will affect first.
>
> It is much simpler to commit a new change that fixes the omission or error and let others pull that additional change.

## Tools for changing history

| Tool        | Magit | Description                                         |
|-------------|-------|-----------------------------------------------------|
| Augment     | `c A` | Create a squash commit, editing the squash message  |
| Squash      | `c s` | see [squash commits](squash-commits.md) |
| Auto-squash | `c S` | see [interactive rebasing](interactive-rebasing.md) |
| Fixup       | `c f` | see [interactive rebasing](interactive-rebasing.md) |
| Auto-fixup  | `c F` | see [interactive rebasing](interactive-rebasing.md) |
