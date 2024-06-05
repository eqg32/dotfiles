;; Local Variables:
;; flycheck-disabled-checkers: (emacs-lisp-checkdoc)
;; byte-compile-warnings: (not free-vars)
;; End:
(require 'use-package)

(use-package evil-terminal-cursor-changer
  :custom
  (evil-insert-state-cursor 'bar))
  :config
  (evil-terminal-cursor-changer-activate)
(use-package evil
  :init
  (setq evil-want-keybinding nil
	evil-undo-system 'undo-fu)
  (evil-mode)
  :config
  (evil-define-key 'normal 'global
    "gl" "$"
    "gh" "0")
  (setq avy-highlight-first nil)
  (set-face-attribute 'avy-lead-face nil :background (face-attribute 'font-lock-string-face :foreground))
  (set-face-attribute 'avy-lead-face-0 nil :background (face-attribute 'font-lock-string-face :foreground))
  (set-face-attribute 'avy-lead-face-1 nil :background (face-attribute 'font-lock-string-face :foreground))
  (set-face-attribute 'avy-lead-face-2 nil :background (face-attribute 'font-lock-string-face :foreground))
  (set-face-attribute 'avy-lead-face nil :foreground (face-attribute 'default :background))
  (set-face-attribute 'avy-lead-face-0 nil :foreground (face-attribute 'default :background))
  (set-face-attribute 'avy-lead-face-1 nil :foreground (face-attribute 'default :background))
  (set-face-attribute 'avy-lead-face-2 nil :foreground (face-attribute 'default :background))
  (define-key evil-normal-state-map (kbd "s") 'evil-avy-goto-char-2-below)
  (define-key evil-normal-state-map (kbd "S") 'evil-avy-goto-char-2-above)
  (define-key evil-normal-state-map (kbd "M-w") 'evil-window-next)
  (define-key evil-normal-state-map (kbd "C-u") 'evil-scroll-up))

(use-package evil-collection
  :config
  (evil-collection-init))

(use-package evil-commentary
  :config
  (evil-commentary-mode))

(use-package key-chord
  :config
  (key-chord-mode t)
  (setq key-chord-one-key-delay 1)
  (key-chord-define evil-insert-state-map "je" 'evil-execute-in-normal-state)
  (key-chord-define evil-insert-state-map "jk" 'evil-normal-state))

(use-package undo-fu)
