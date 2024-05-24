;; Local Variables:
;; flycheck-disabled-checkers: (emacs-lisp-checkdoc)
;; byte-compile-warnings: (not free-vars)
;; End:

;; getting rid of autosaves and recentf
(setq recentf-list nil)
(setq recentf-filter-changer-current nil)
(setq recentf-mode nil)
(recentf-mode -1)

(setq auto-save-default nil)
(auto-save-mode -1)

(setq make-backup-files nil)

;; general options
(setq display-line-numbers-type 'relative)
(setq font-lock-maximum-decoration t)
(setq-default major-mode 'text-mode)
(global-display-line-numbers-mode)
(add-hook 'prog-mode-hook 'hl-line-mode)
(menu-bar-mode -1) 

;; gui options
(set-face-attribute 'default nil :font "Iosevka Nerd Font Mono" :height 160)
(tool-bar-mode -1)
(scroll-bar-mode -1)
