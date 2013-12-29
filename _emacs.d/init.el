;-*-Lisp Interaction-*-
(add-to-list 'load-path "~/.emacs.d/site-lisp")
(add-to-list 'load-path "~/.emacs.d/auto-install")

(let ((default-directory "~/.emacs.d/site-lisp/"))
  (setq load-path (cons default-directory load-path))
  (normal-top-level-add-subdirs-to-load-path))

(defvar os-type nil)
(cond ((string-match "apple-darwin" system-configuration) ;; Mac
       (setq os-type 'mac))
      ((string-match "linux" system-configuration)        ;; Linux
       (setq os-type 'linux))
      ((string-match "freebsd" system-configuration)      ;; FreeBSD
       (setq os-type 'bsd))
      ((string-match "mingw" system-configuration)        ;; Windows
       (setq os-type 'win)))
(defun macp ()
  (eq os-type 'mac))
(defun linuxp ()
  (eq os-type 'linux))
(defun bsdp ()
  (eq os-type 'freebsd))
(defun winp ()
  (eq os-type 'win))

(require 'init-loader)
(init-loader-load "~/.emacs.d/inits")

;; auto-install
;; http://www.emacswiki.org/emacs/auto-install.el
(require 'auto-install)
(setq auto-install-directory "~/.emacs.d/auto-install/")
;(auto-install-update-emacswiki-package-name nil)

;;行番号表示
(global-linum-mode t)
