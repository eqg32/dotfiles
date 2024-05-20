;; Local Variables:
;; flycheck-disabled-checkers: (emacs-lisp-checkdoc)
;; byte-compile-warnings: (not free-vars)
;; End:
(require 'use-package)

(use-package catppuccin-theme
  :config
  (setq catppuccin-flavor 'macchiato)
  (load-theme 'catppuccin :no-confim))

(use-package dashboard
  :config
  (setq dashboard-startup-banner (expand-file-name "~/.emacs.d/core/modules/title.txt"))
  (dashboard-setup-startup-hook))

(use-package sublimity-scroll
  :load-path "~/.emacs.d/core/plugins/")

(use-package sublimity
  :config
  (setq
   sublimity-scroll-weight 16
   sublimity-scroll-drift-length 0
   sublimity-scroll-vertical-frame-delay 0.01)
  (sublimity-mode t))

(use-package ace-popup-menu
  :config
  (ace-popup-menu-mode t))

(use-package which-key
  :init
  (which-key-mode)
  :config
  (setq which-key-popup-type 'minibuffer))

(use-package neotree
  :config
  (load (expand-file-name "~/.emacs.d/core/modules/evil.el"))
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
  (global-set-key (kbd "M-f") 'neotree-toggle))

(use-package ivy
  :init
  (ivy-mode))

(use-package mood-line
  :config
  (mood-line-mode))

(use-package nerd-icons)
(use-package all-the-icons)
