(use-package format-all
  :ensure t
  :hook (prog-mode . format-all-mode)
  :config
  (setq-default format-all-formatters
		'(
		  ("Go" (gofmt))
		  ("Lua" (stylua))
		  ("Python" (black "-l" "79"))
		  )))
