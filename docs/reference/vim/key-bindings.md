# Evil Key Bindings Reference

Key bindings scrapped from the Evil and Evil-collection repositories

## Normal mode magic

`#` toggle case of character under point / visually selected region

`r` replace current character or selected region with next character

> Tip: redact a password or sensitive text by selecting all the characters and using `r*`



## Into insert mode

`a` append - insert mode after current point
`i` insert - insert mode before current point

`o` open new line - insert mode on new line after current
`O` open new line - insert mode on new line after current

## Visual Select

`v` - enter visual select mode - hjkl to select
`vb` - select backward by word


## Moving around

`5l` `7h` for rough jumping along a line

`f` / `F` jump forward/backward to next character on current line. e.g `f,` jumps to next comma

Word boundaries
Jumping word boundaries
wraps to next line

`w` start of next word
`b` back to start of current word (or previous word if at start of current word)
`e` end of current word (or end of next word, if at end of current word)


## Evil



### Evil-keybindings-el

#### dird

Normal mode key bindings

"J" 'dired-goto-file                   ; "j"
"K" 'dired-do-kill-lines               ; "k"
"r" 'dired-do-redisplay                ; "l"

;; ":d", ":v", ":s", ":e"
";" (lookup-key dired-mode-map ":"))))




(evil-add-hjkl-bindings Info-mode-map 'motion
  "0" 'evil-beginning-of-line
  (kbd "\M-h") 'Info-help   ; "h"
  "\C-t" 'Info-history-back ; "l"
  "\C-o" 'Info-history-back
  " " 'Info-scroll-up
  "\C-]" 'Info-follow-nearest-node
  (kbd "DEL") 'Info-scroll-down)



(evil-add-hjkl-bindings speedbar-key-map 'motion
  "h" 'backward-char
  "j" 'speedbar-next
  "k" 'speedbar-prev
  "l" 'forward-char
  "i" 'speedbar-item-info
  "r" 'speedbar-refresh
  "u" 'speedbar-up-directory
  "o" 'speedbar-toggle-line-expansion
  (kbd "RET") 'speedbar-edit-line)



(eval-after-load 'ibuffer
  '(progn
     (defvar ibuffer-mode-map)
     (evil-make-overriding-map ibuffer-mode-map 'normal)
     (evil-define-key 'normal ibuffer-mode-map
       "j" 'evil-next-line
       "k" 'evil-previous-line
       "RET" 'ibuffer-visit-buffer)))


 (eval-after-load 'ag
  '(progn
     (defvar ag-mode-map)
     (add-to-list 'evil-motion-state-modes 'ag-mode)
     (evil-add-hjkl-bindings ag-mode-map 'motion)))

;;; ELP

(eval-after-load 'elp
  '(defadvice elp-results (after evil activate)
     (evil-motion-state)))
