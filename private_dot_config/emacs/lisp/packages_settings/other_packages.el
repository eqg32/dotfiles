(use-package gnu-elpa-keyring-update
  :ensure t)

;; interface

(use-package catppuccin-theme
  :ensure t
  :config
  (setq catppuccin-flavor 'macchiato)
  (load-theme 'catppuccin :no-confirm))

(use-package moody
  :ensure t
  :config
  (moody-replace-mode-line-front-space)
  (moody-replace-mode-line-buffer-identification)
  (moody-replace-vc-mode))

(use-package which-key
  :ensure t
  :config
  (which-key-setup-side-window-bottom)
  (which-key-mode))

(use-package dashboard
  :ensure t
  :after meow
  :config
  (setq dashboard-startup-banner "~/.config/emacs/lisp/packages_settings/title.txt")
  (setq dashboard-banner-logo-title "there is no way out of Bryansk")
  (setq dashboard-items '((recents . 5)
			  (bookmarks . 5)))
  (set-face-attribute 'dashboard-banner-logo-title-face nil
		      :foreground
		      (face-attribute 'font-lock-function-name-face :foreground))
  (set-face-attribute 'dashboard-heading-face nil
		      :foreground
		      (face-attribute 'font-lock-function-name-face :foreground))
  (set-face-attribute 'dashboard-text-banner-face nil
		      :foreground
		      (face-attribute 'font-lock-function-name-face :foreground))
  (dashboard-setup-startup-hook))

(use-package ace-popup-menu
  :ensure t
  :config
  (ace-popup-menu-mode))

(use-package selectrum
  :ensure t
  :config
  (selectrum-mode))

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
  :ensure (:host github :repo "jdtsmith/indent-bars")
  :hook ((prog-mode . indent-bars-mode)))

(use-package quickrun
  :ensure t)

(use-package lua-mode
  :ensure t)

(use-package go-mode
  :ensure t)

(use-package geiser-guile
  :ensure t)

(electric-pair-mode)
