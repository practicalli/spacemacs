# Encryption in Emacs - EasyPG Assistant

EasyPG Assistant provides the following features.

* Key management.
* Cryptographic operations on regions.
* Cryptographic operations on files.
* Dired integration.
* Mail-mode integration.
* Automatic encryption/decryption of *.gpg files.

EasyPG Assistant commands are prefixed by ‘epa-’. For example,

* `SPC SPC epa-list-keys`    browse your keyring
* `SPC SPC epa-sign-region`  create a cleartext signature of the region
* `SPC SPC epa-encrypt-file` encrypt a file

automatic encryption/decryption of *.gpg files is configured in Spacemacs

## Common uses

* Encrypting org mode files
* Encrypting personal access tokens and passwords, e.g `authinfo.gpg`
