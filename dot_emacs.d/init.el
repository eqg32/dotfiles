;; initialising package.el

(require 'package)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "https://orgmode.org/packages/"))
(setq package-enable-at-startup nil)
(package-initialize)

;; loading files

(load (concat user-emacs-directory "core.el"))
(mapc (lambda (x) (load x))
      (file-expand-wildcards
       (concat user-emacs-directory "extra/use-*.el")))
