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
  (dashboard-setup-startup-hook))

(use-package selectrum
  :ensure t
  :config
  (selectrum-mode))

;; programming

(use-package transient
  :ensure t)

(use-package magit
  :ensure t
  :after transient)

(use-package eglot
  :hook ((python-mode . eglot-ensure)))

(elpaca pyvenv
  :repo "jorgenschaefer/pevenv"
  (use-package pyvenv
    :ensure t
    :hook ((python-mode . pyvenv-mode))))

(use-package tree-sitter-langs
  :ensure t
  :after tree-sitter)

(use-package tree-sitter
  :ensure t
  :hook ((prog-mode . tree-sitter-hl-mode)))

(use-package lua-mode
  :ensure t)

(use-package go-mode
  :ensure t)

(use-package geiser-guile
  :ensure t)

(use-package rainbow-delimiters
  :ensure t
  :hook ((prog-mode . rainbow-delimiters-mode)))

(electric-pair-mode)
