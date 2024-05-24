;; Local Variables:
;; flycheck-disabled-checkers: (emacs-lisp-checkdoc)
;; byte-compile-warnings: (not free-vars)
;; End:
(load (expand-file-name "~/.emacs.d/core/settings.el"))
(load (expand-file-name "~/.emacs.d/core/packages_init.el"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("4df435d012a155e2f22e75b15b9f70bdf559f0305f3d7d9ea2297a89cf90e4b0" "f700bc979515153bef7a52ca46a62c0aa519950cc06d539df4f3d38828944a2c" default))
 '(package-selected-packages
   '(tree-sitter solaire-mode lua-mode magit quickrun dirvish highlight-thing ivy undo-tree neotree evil-commentary tree-sitter-langs sublimity rainbow-delimiters key-chord highlight-indentation exec-path-from-shell evil-terminal-cursor-changer evil-collection doom-modeline dashboard company catppuccin-theme autothemer ace-popup-menu)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
