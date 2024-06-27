(use-package meow
  :ensure t
  :after undo-tree
  :init
  (defun meow-setup ()
    (setq meow-expand-hint-remove-delay 0)
    (setq meow-use-clipboard t)
    (setq meow-replace-state-name-list '((normal . "normal")
					 (motion . "motion")
					 (keypad . "keypad")
					 (insert . "insert")
					 (beacon . "beacon")))
    (setq meow-mode-state-list '((dired-mode . normal)
				 (dashboard-mode . normal)
				 (term-mode . insert)))
    ;; (meow-setup-indicator)
    (meow-leader-define-key
     '("1" . meow-digit-argument)
     '("2" . meow-digit-argument)
     '("3" . meow-digit-argument)
     '("4" . meow-digit-argument)
     '("5" . meow-digit-argument)
     '("6" . meow-digit-argument)
     '("7" . meow-digit-argument)
     '("8" . meow-digit-argument)
     '("9" . meow-digit-argument)
     '("0" . meow-digit-argument)
     '("/" . meow-keypad-describe-key))
    (meow-normal-define-key
     ;; digit arguments
     '("0" . meow-expand-0)
     '("1" . meow-expand-1)
     '("2" . meow-expand-2)
     '("3" . meow-expand-3)
     '("4" . meow-expand-4)
     '("5" . meow-expand-5)
     '("6" . meow-expand-6)
     '("7" . meow-expand-7)
     '("8" . meow-expand-8)
     '("9" . meow-expand-9)
     ;; movements and selections
     '("h" . meow-left)
     '("H" . meow-left-expand)
     '("j" . meow-next)
     '("J" . meow-end-of-thing)
     '("k" . meow-prev)
     '("K" . meow-beginning-of-thing)
     '("l" . meow-right)
     '("L" . meow-right-expand)
     '("e" . meow-next-word)
     '("E" . meow-next-symbol)
     '("b" . meow-back-word)
     '("B" . meow-back-symbol)
     '("w" . meow-mark-word)
     '("W" . meow-mark-symbol)
     '("f" . meow-find)
     '("t" . meow-till)
     '("n" . meow-expand-1)
     '("s" . avy-goto-char-2-below)
     '("S" . avy-goto-char-2-above)
     '("x" . meow-line)
     '("X" . meow-goto-line)
     '("v" . meow-visit)
     '("V" . meow-search)
     '("m" . meow-block)
     '("M" . meow-cancel-selection)
     '("z" . meow-reverse)
     '("F" . scroll-up)
     '("Y" . scroll-down)
     '("q" . other-window)
     '("Q" . meow-last-buffer)
     '(";" . meow-join)
     ;; editing
     '("i" . meow-insert)
     '("a" . meow-append)
     '("o" . meow-open-below)
     '("O" . meow-open-above)
     '("r" . meow-replace)
     '("R" . meow-replace-pop)
     '("d" . meow-kill)
     '("D" . meow-delete)
     '("c" . meow-change)
     '("g" . meow-grab)
     '("G" . meow-swap-grab)
     '("y" . meow-save)
     '("p" . meow-yank) 
     '("P" . meow-yank-pop)
     '("u" . undo-tree-undo)
     '("U" . undo-tree-redo)
     ;; other
     '(":" . meow-M-x)
     '("<delete>" . ignore)
     '("<escape>" . ignore)
     '("<backspace>" . ignore)
     ))
  :config
  (meow-setup)
  (meow-global-mode))

(use-package key-chord
  :ensure t
  :after meow
  :config
  (setq key-chord-two-keys-delay 0.5)
  (key-chord-define meow-insert-state-keymap "jk" 'meow-normal-mode)
  (key-chord-mode))
