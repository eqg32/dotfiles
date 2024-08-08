(use-package gnu-elpa-keyring-update
  :ensure t)

;; interface

(use-package catppuccin-theme
  :ensure t
  :config
  (setq catppuccin-flavor 'macchiato))

(use-package doom-themes
  :ensure t
  :config
  (setq doom-themes-enable-bold nil)
  (load-theme 'doom-nord :no-confirm))

(use-package doom-modeline
  :ensure t
  :config
  (setq doom-modeline-modal-icon nil
	doom-modeline-major-mode-icon nil)
  (doom-modeline-mode))

(use-package which-key
  :ensure t
  :config
  (which-key-setup-side-window-bottom)
  (which-key-mode))

(use-package ace-popup-menu
  :ensure t
  :config
  (ace-popup-menu-mode))

(use-package selectrum
  :ensure t
  :config
  (selectrum-mode))

(use-package neotree
  :ensure t
  :config
  (setq neo-theme nil))

;; editing

(use-package undo-tree
  :ensure t
  :config
  (setq undo-tree-auto-save-history nil)
  (global-undo-tree-mode))

(use-package transient
  :ensure t)

(use-package magit
  :ensure t
  :after transient)

(use-package eglot
  :hook ((python-mode . eglot-ensure)
	 (go-mode . eglot-ensure)
	 (lua-mode . eglot-ensure)))

(use-package pyvenv
  :ensure t
  :hook ((python-mode . pyvenv-mode)))

(use-package tree-sitter-langs
  :ensure t
  :after tree-sitter)

(use-package tree-sitter
  :ensure t
  :hook ((prog-mode . tree-sitter-hl-mode)))

(use-package rainbow-delimiters
  :ensure t
  :hook ((prog-mode . rainbow-delimiters-mode)))

(use-package indent-bars
  :ensure (:host github
	   :repo "jdtsmith/indent-bars")
  :hook ((prog-mode . indent-bars-mode))
  :config
  (setq indent-bars-prefer-character t))

(use-package quickrun
  :ensure t)

(use-package lua-mode
  :ensure t)

(use-package go-mode
  :ensure t)

(use-package geiser-guile
  :ensure t)

(electric-pair-mode)
