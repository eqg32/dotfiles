(use-package doom-themes
  :ensure t
  :after frame
  :config
  (set-frame-parameter nil 'alpha-background 90)
  (setq doom-themes-enable-bold nil)
  (load-theme 'doom-nord :no-confirm)
  (set-face-attribute 'default nil
		      :font "Iosevka Nerd Font"
		      :height 160))
