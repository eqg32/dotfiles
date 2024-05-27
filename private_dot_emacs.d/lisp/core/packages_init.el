;; Local Variables:
;; flycheck-disabled-checkers: (emacs-lisp-checkdoc)
;; byte-compile-warnings: (not free-vars)
;; End:
(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
(add-to-list 'package-archives '("gnu" . "https://stable.melpa.org/packages/"))
(add-to-list 'package-archives '("nongnu" . "https://elpa.nongnu.org/nongnu/"))
(add-to-list 'package-archives '("gnu-devel" . "https://elpa.gnu.org/devel/"))
(package-initialize)

(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(setq package-check-signature nil)

(require 'use-package)

(setq
  use-package-always-ensure t
  use-package-verbose t)

(load "~/.emacs.d/lisp/packages_settings/interface.el")
(load "~/.emacs.d/lisp/packages_settings/programming.el")
(load "~/.emacs.d/lisp/packages_settings/editing.el")

(use-package exec-path-from-shell
  :config
  (exec-path-from-shell-initialize))

