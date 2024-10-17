(use-package tree-sitter
  :ensure t
  :hook ((prog-mode . tree-sitter-mode))
  :config
  (add-hook 'tree-sitter-mode-hook 'tree-sitter-hl-mode))

(use-package tree-sitter-langs
  :ensure t
  :after tree-sitter)

(use-package rainbow-delimiters
  :ensure t
  :hook (prog-mode . rainbow-delimiters-mode))
