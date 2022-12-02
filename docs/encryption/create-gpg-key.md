# Creating a gpg key

Create a key
```shell
gpg --gen-key
```
There’s a simple wizard that lets you set the encryption type, and asks for your name, email address and other comments. Those details will be associated with your key.

Next, you’ll be asked to create a passphrase. This is like the password to your secret key. If you lose it, you’ll have no access to any of the information encrypted with this key. So don’t ever lose it…

Here’s how this flow looks like:
```

~ $ gpg --gen-key
gpg (GnuPG) 1.4.19; Copyright (C) 2015 Free Software Foundation, Inc.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Please select what kind of key you want:
   (1) RSA and RSA (default)
   (2) DSA and Elgamal
   (3) DSA (sign only)
   (4) RSA (sign only)
Your selection? 1
RSA keys may be between 1024 and 4096 bits long.
What keysize do you want? (2048)
Requested keysize is 2048 bits
Please specify how long the key should be valid.
         0 = key does not expire
      <n>  = key expires in n days
      <n>w = key expires in n weeks
      <n>m = key expires in n months
      <n>y = key expires in n years
Key is valid for? (0)
Key does not expire at all
Is this correct? (y/N) y

You need a user ID to identify your key; the software constructs the user ID
from the Real Name, Comment and Email Address in this form:
    "John Practicalli <noreply@practical.li>"

Real name: Jane Roe
Email address: jane@example.com
Comment: lorem ipsum
You selected this USER-ID:
    "Jane Roe (lorem ipsum) <jane@example.com>"

Change (N)ame, (C)omment, (E)mail or (O)kay/(Q)uit? O
You need a Passphrase to protect your secret key.

We need to generate a lot of random bytes. It is a good idea to perform
some other action (type on the keyboard, move the mouse, utilize the
disks) during the prime generation; this gives the random number
generator a better chance to gain enough entropy.
..........+++++
.+++++
We need to generate a lot of random bytes. It is a good idea to perform
some other action (type on the keyboard, move the mouse, utilize the
disks) during the prime generation; this gives the random number
generator a better chance to gain enough entropy.
..........+++++
...+++++
gpg: key 86B62C98 marked as ultimately trusted
public and secret key created and signed.

gpg: checking the trustdb
gpg: 3 marginal(s) needed, 1 complete(s) needed, PGP trust model
gpg: depth: 0  valid:   2  signed:   0  trust: 0-, 0q, 0n, 0m, 0f, 2u
pub   2048R/86B62C98 2016-02-17
      Key fingerprint = 42FD C031 BD51 4CC8 7C02  EA14 35D4 80A2 86B6 2C98
uid                  Jane Roe (lorem ipsum) <jane@example.com>
sub   2048R/8C0D5E5D 2016-02-17

~ $

```
Now that you've created a key, you can go ahead and sign the .authinfo file.
Sign and encrypt the .authinfo file1

```shell
~ $ gpg -se .authinfo
```
You'll be asked for your passphrase. Enter it, and the .authinfo will be signed, and renamed to .authinfo.gpg

EmacsWiki suggests to limit permission to this file. I find it important:

```shell
~ $ chmod 600 .authinfo.gpg
```


---

> #### TODO::work in progress, sorry

## Specifying encrypt-to account
TODO: Add a comment with who the file is encrypted to?  If using symmetrical encryption, it seems no.
```
# -*- epa-file-encrypt-to: ("hacking@practical.li") -*-
```

Encrypting the file uses [GnuPG](https://gnupg.org/), free cryptographic software from the GNU Project which helps ensure the confidentiality, integrity and assurance of data.

Is  `gpg --gen-key` necessary before using gpg-agent for .authinfo.gpg?  It would seem not.


## Add .authinfo to keyring

With the `.authinfo.pgp` file in they keyring, it will be unlocked each time you login to the operating system with your usual login account.  Magit Forge will them be able to access the token until you logout of your operating system.

TODO: Is this required if the file is encrypted via Emacs?


* [org-mode: encrypting org files](https://orgmode.org/worg/org-tutorials/encrypting-files.html)
* [Configuring Forge](https://asok.github.io/emacs/2018/05/09/configuring-magithub.html) - Forge uses the same method to authenticate.
