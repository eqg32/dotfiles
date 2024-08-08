(use-package sublimity
  :ensure t
  :config
  ;; (require 'sublimity-attractive)
  (require 'sublimity-scroll)
  (setq sublimity-scroll-weight 16
	sublimity-scroll-drift-length 8
	sublimity-scroll-vertical-frame-delay 0.01)
  (setq sublimity-attractive-centering-width 96)
  (sublimity-mode))
