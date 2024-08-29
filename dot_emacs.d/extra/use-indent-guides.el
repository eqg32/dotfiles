(use-package indent-guide
  :ensure t
  :config
  (setq indent-guide-char "|")
  (set-face-attribute
   'indent-guide-face nil
   :foreground (face-attribute
		'font-lock-keyword-face :foreground))
  (indent-guide-global-mode +1))
