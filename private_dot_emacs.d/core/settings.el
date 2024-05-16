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
(global-display-line-numbers-mode)
(setq-default major-mode 'text-mode)
(set-face-attribute 'default nil :font "0xProto Nerd Font Mono" :height 160)
(setq font-lock-maximum-decoration t)
(menu-bar-mode -1) 
(add-hook 'prog-mode-hook 'hl-line-mode)
