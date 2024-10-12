;; native packages

(use-package emacs
  :config
  (scroll-bar-mode -1)
  (tool-bar-mode -1)
  (menu-bar-mode -1)

  (setq	ring-bell-function 'ignore)

  (setq warning-minimum-level :error
	byte-compile-warnings nil
	native-comp-async-report-warnings-errors nil)

  (setq scroll-margin 4)

  (setq auto-revert-interval 3)
  (auto-revert-mode +1)

  (setq inhibit-startup-screen t))

(use-package hl-line
  :config
  (global-hl-line-mode +1))

(use-package display-line-numbers
  :config
  (setq display-line-numbers-type 'relative)
  (global-display-line-numbers-mode +1))

(use-package files
  :config
  (setq confirm-kill-processes nil
	create-lockfiles nil
	make-backup-files nil))

(use-package frame
  :config
  (setq frame-resize-pixelwise t))

(use-package delsel
  :config
  (delete-selection-mode +1))

(use-package elec-pair
  :config
  (electric-pair-mode +1))

(use-package eglot
  :hook ((go-mode . eglot-ensure)
	 (python-mode . eglot-ensure)
	 (c-mode . eglot-ensure)
	 (c++-mode . eglot-ensure)))

(use-package eldoc
  :config
  (setq eldoc-echo-area-use-multiline-p nil))

;; third-party packages

(use-package gnu-elpa-keyring-update
  :ensure t)

(use-package vertico
  :ensure t
  :config
  (vertico-mode +1))

(use-package evil
  :ensure t
  :init
  (setq evil-want-C-u-scroll t
	evil-want-keybinding nil
	evil-undo-system 'undo-redo)
  :config
  (evil-mode +1))

(use-package evil-collection
  :ensure t
  :after evil
  :config
  (evil-collection-init))

(use-package evil-commentary
  :ensure t
  :after evil
  :config
  (evil-commentary-mode +1))

(use-package company
  :ensure t
  :init
  (setq company-minimum-prefix-length 2)
  :config
  (company-tng-mode +1)
  (global-company-mode +1))
