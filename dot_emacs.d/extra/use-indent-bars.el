(use-package indent-bars
  :ensure t
  :hook ((go-mode . indent-bars-mode)
	 (python-mode . indent-bars-mode)
	 (c++-mode . indent-bars-mode))
  :config
  (setq indent-bars-prefer-character t))
