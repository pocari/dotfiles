;-*-Lisp Interaction-*-
(add-to-list 'load-path "~/.emacs.d/site-lisp")
(add-to-list 'load-path "~/.emacs.d/auto-install")

(let ((default-directory "~/.emacs.d/site-lisp/"))
  (setq load-path (cons default-directory load-path))
  (normal-top-level-add-subdirs-to-load-path))

(require 'init-loader)
(init-loader-load "~/.emacs.d/inits")

;; auto-install
;; http://www.emacswiki.org/emacs/auto-install.el
(require 'auto-install)
(setq auto-install-directory "~/.emacs.d/auto-install/")
;(auto-install-update-emacswiki-package-name nil)
