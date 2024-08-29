(use-package avy
  :ensure t
  :after evil
  :config
  (define-key evil-normal-state-map "s" 'avy-goto-char-2-below)
  (define-key evil-normal-state-map "S" 'avy-goto-char-2-above))
