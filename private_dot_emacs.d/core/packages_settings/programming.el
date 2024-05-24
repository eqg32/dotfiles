;; Local Variables:
;; flycheck-disabled-checkers: (emacs-lisp-checkdoc)
;; byte-compile-warnings: (not free-vars)
;; End:
(require 'use-package)

(use-package company
  :init
  (company-tng-mode t)
  :config

  (setq *keys* '("C-n" "M-n" "C-p" "M-p" "RET" "TAB" "C-g" "C-h" "C-w"))
  (dolist (key *keys*)
    (define-key company-active-map (kbd key) nil))

  (define-key company-active-map (kbd "RET") #'company-complete-selection)
  (define-key company-active-map (kbd "C-e") #'company-abort)
  (define-key company-active-map (kbd "TAB") #'company-select-next-or-abort)
  (define-key company-active-map (kbd "C-k") #'company-select-previous-or-abort)

  (setq company-minimum-prefix-length 2)
  (setq company-selection-wrap-around t)
  (setq company-show-quick-access 'right)
  (add-hook 'prog-mode-hook 'company-mode))

(use-package rainbow-delimiters
  :config
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))

(use-package indent-bars
  :load-path "~/.emacs.d/core/local_packages/"
  :config
  (add-hook 'python-mode-hook 'indent-bars-mode)
  (add-hook 'go-mode-hook 'indent-bars-mode))

(use-package eglot
  :config
  (add-hook 'go-mode-hook 'eglot-ensure)
  (add-hook 'lua-mode-hook 'eglot-ensure)
  (add-hook 'python-mode-hook 'eglot-ensure))

(use-package flycheck
  :config
  (add-hook 'prog-mode-hook #'global-flycheck-mode))

(use-package format-all
  :hook (prog-mode . format-all-mode)
  :config
  (setq-default format-all-formatters
		'(
		  ("Go" (gofmt))
		  ("Python" (black "-l" "79"))
		  )))

(use-package tree-sitter
  :hook (prog-mode . tree-sitter-hl-mode))
(use-package tree-sitter-langs)

(use-package lua-mode)

(use-package go-mode)

(use-package geiser-guile)

(use-package quickrun)

(use-package magit)

(electric-pair-mode t)
