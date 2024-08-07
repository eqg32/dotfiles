;; getting rid of autosaves
(setq auto-save-default nil
      make-backup-files nil)

(auto-save-mode -1)

;; general options
(setq display-line-numbers-type 'relative)
(setq font-lock-maximum-decoration t)
(setq mode-line-format nil)
(setq native-comp-async-report-warnings-errors 'silent)

(setq inhibit-startup-message t
      inhibit-startup-echo-area-message t)

(setq-default major-mode 'text-mode)
(global-display-line-numbers-mode)
(add-hook 'prog-mode-hook 'hl-line-mode)
(menu-bar-mode -1) 

;; gui options
(set-face-attribute 'default nil :font "CaskaydiaCove NF" :height 130)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(set-frame-parameter nil 'alpha-background 90)

(defun set-bigger-spacing ()
  (setq-local default-text-properties '(line-spacing 0.1 line-height 1.1)))
(add-hook 'text-mode-hook 'set-bigger-spacing)
(add-hook 'prog-mode-hook 'set-bigger-spacing)
