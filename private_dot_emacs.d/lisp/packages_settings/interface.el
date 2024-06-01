;; Local Variables:
;; flycheck-disabled-checkers: (emacs-lisp-checkdoc)
;; byte-compile-warnings: (not free-vars)
;; End:
(require 'use-package)

(use-package catppuccin-theme
  :config
  (setq catppuccin-flavor 'macchiato))

(use-package rose-pine-theme
  :load-path "~/.emacs.d/lisp/local_packages/")

(add-to-list 'custom-theme-load-path "~/.emacs.d/lisp/themes/everforest")

(load-theme 'catppuccin :no-confim)

(use-package dashboard
  :config
  (setq dashboard-startup-banner "~/.emacs.d/lisp/packages_settings/title.txt")
  (dashboard-setup-startup-hook))

(use-package sublimity-scroll
  :load-path "~/.emacs.d/lisp/local_packages/")

(use-package sublimity
  :init
  (setq
   sublimity-scroll-weight 12
   sublimity-scroll-drift-length 4
   sublimity-scroll-vertical-frame-delay 0.01)
  (sublimity-mode))

(use-package ace-popup-menu
  :config
  (ace-popup-menu-mode))

(use-package which-key
  :init
  (which-key-mode)
  :config
  (setq which-key-popup-type 'minibuffer))

(use-package solaire-mode
  :init
  (solaire-global-mode))

(use-package neotree
  :config
  (load "~/.emacs.d/lisp/packages_settings/editing.el")
  (require 'evil)
  (evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
  (evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-quick-look)
  (evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
  (evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)
  (evil-define-key 'normal neotree-mode-map (kbd "g") 'neotree-refresh)
  (evil-define-key 'normal neotree-mode-map (kbd "n") 'neotree-next-line)
  (evil-define-key 'normal neotree-mode-map (kbd "p") 'neotree-previous-line)
  (evil-define-key 'normal neotree-mode-map (kbd "A") 'neotree-stretch-toggle)
  (evil-define-key 'normal neotree-mode-map (kbd "H") 'neotree-hidden-file-toggle)
  (setq neo-theme nil)
  (global-set-key (kbd "M-f") 'neotree-toggle))

(use-package selectrum
  :init
  (selectrum-mode))

(use-package telephone-line)

(use-package mood-line
  :config
  (mood-line-mode))

(use-package autothemer)
;; (use-package all-the-icons)
(use-package nerd-icons)
