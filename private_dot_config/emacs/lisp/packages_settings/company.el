(use-package company
  :ensure t
  :hook ((prog-mode . company-mode)
         (prog-mode . company-tng-mode))
  :config
  (setq *keys* '("C-n" "M-n" "C-p" "M-p" "RET" "TAB" "C-g" "C-h" "C-w"))
  (dolist (key *keys*)
    (define-key company-active-map (kbd key) nil))
  (define-key company-active-map (kbd "RET") #'company-complete-selection)
  (define-key company-active-map (kbd "C-e") #'company-abort)
  (define-key company-active-map (kbd "TAB") #'company-select-next-or-abort)
  (define-key company-active-map (kbd "C-k") #'company-select-previous-or-abort)
  (setq company-minimum-prefix-length 1
	company-selection-wrap-around t
	company-show-quick-access 'right))
