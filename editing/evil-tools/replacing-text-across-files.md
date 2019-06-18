# Replacing text in several files

If you have =ag=, =pt= or =ack= installed, replacing an occurrence of text in
several files can be performed via [[https://github.com/syohex/emacs-helm-ag][helm-ag]].

Say you want to replace all =foo= occurrences by =bar= in your current
project:
  - initiate a search with `SPC /`
  - enter in edit mode with `C-c C-e`
  - go to the occurrence and enter in =iedit state= with `SPC s e`
  - edit the occurrences then leave the =iedit state=
  - press `C-c C-c`

*Note*: In Spacemacs, =helm-ag= despite its name works with =ack= and =pt= as
well (but not with =grep=).
