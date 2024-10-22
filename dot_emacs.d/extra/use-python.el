(use-package elpy
  :ensure t
  :config
  (elpy-enable))

(use-package pyvenv
  :ensure t
  :hook (python-mode . pyvenv-mode))
