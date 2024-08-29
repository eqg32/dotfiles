(use-package dashboard
  :ensure t
  :config
  (setq dashboard-items nil
	dashboard-startup-banner (concat user-emacs-directory "extra/title.txt")
	dashboard-banner-logo-title "what the hell?")
  (dashboard-setup-startup-hook))
