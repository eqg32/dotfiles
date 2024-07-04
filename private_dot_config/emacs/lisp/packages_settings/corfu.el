(use-package corfu
  :ensure t
  :bind
  (:map corfu-map
	("TAB" . corfu-next)
	([tab] . corfu-next)
	("S-TAB" . corfu-previous)
	([backtab] . corfu-previous))
  :init
  (setq corfu-auto t)
  (setq corfu-cycle t)
  (setq corfu-auto-prefix 2)
  (setq corfu-preselect 'prompt)
  (global-corfu-mode))

(use-package nerd-icons-corfu
  :ensure t
  :after corfu
  :config
  (add-to-list 'corfu-margin-formatters #'nerd-icons-corfu-formatter))
