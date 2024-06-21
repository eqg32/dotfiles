(use-package avy
  :ensure t
  :config
  (setq avy-highlight-first nil)
  (set-face-attribute 'avy-lead-face nil
		      :background
		      (face-attribute 'font-lock-string-face :foreground))
  (set-face-attribute 'avy-lead-face-0 nil
		      :background
		      (face-attribute 'font-lock-string-face :foreground))
  (set-face-attribute 'avy-lead-face-1 nil
		      :background
		      (face-attribute 'font-lock-string-face :foreground))
  (set-face-attribute 'avy-lead-face-2 nil
		      :background
		      (face-attribute 'font-lock-string-face :foreground)))
