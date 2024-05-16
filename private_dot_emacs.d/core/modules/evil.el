(require 'use-package)

(use-package evil-terminal-cursor-changer
  :custom
  (evil-insert-state-cursor 'bar))
  :config
  (evil-terminal-cursor-changer-activate)

(use-package evil
  :init
  (setq evil-want-keybinding nil)
  (setq evil-undo-system 'undo-fu)
  (evil-mode t)
  :config
  (define-key evil-normal-state-map (kbd "C-u") 'evil-scroll-up)
  (define-key evil-normal-state-map (kbd "s") 'evil-avy-goto-word-1)
  (define-key evil-normal-state-map (kbd "S") 'evil-avy-goto-char))

(use-package doom-modeline
  :init
  (doom-modeline-mode t)
  :config
  (setq doom-modeline-modal-icon nil))

(use-package evil-collection
  :config
  (evil-collection-init))

(use-package evil-commentary
  :config
  (evil-commentary-mode t))

(use-package key-chord
  :config
  (key-chord-mode t)
  (setq key-chord-one-key-delay 0.25)
  (key-chord-define evil-insert-state-map (kbd "jk") 'evil-normal-state))

(use-package undo-fu)
