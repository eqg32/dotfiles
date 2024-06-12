;; getting rid of autosaves
(setq auto-save-default nil
      make-backup-files nil)
(auto-save-mode -1)

;; general options
(setq display-line-numbers-type 'relative
      font-lock-maximum-decoration t
      mode-line-format nil
      native-comp-async-report-warnings-errors 'silent
      inhibit-startup-message t
      inhibit-startup-echo-area-message t)
(setq-default major-mode 'text-mode)
(global-display-line-numbers-mode)
(add-hook 'prog-mode-hook 'hl-line-mode)
(menu-bar-mode -1) 

;; gui options
(set-face-attribute 'default nil :font "Iosevka Nerd Font Mono" :height 180)
(tool-bar-mode -1)
(scroll-bar-mode -1)
