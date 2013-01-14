
(set-language-environment 'Japanese)
(prefer-coding-system 'utf-8)

(define-key global-map [?¥] [?\\])  ;; ¥の代わりにバックスラッシュを入力する
(keyboard-translate ?\C-h ?\C-?)

;;load-path
;; load-pathの追加関数
(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory (expand-file-name (concat user-emacs-directory path))))
        (add-to-list 'load-path default-directory)
        (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
            (normal-top-level-add-subdirs-to-load-path))))))

;; load-pathに追加するフォルダ
;; 2つ以上フォルダを指定する場合の引数 => (add-to-load-path "elisp" "xxx" "xxx")
(add-to-load-path "site-lisp")

(setq inhibit-splash-screen t)
(setq initial-scratch-message "")

(setq indent-line-function 'indent-relative-maybe)
(global-set-key "\C-h" 'delete-backwarar)
(global-set-key "\C-x\C-p" (lambda ()
			     (interactive)
			     (other-window -1)))
(global-set-key "\C-x\C-n" 'other-window)
(global-set-key "\C-x5" 'split-window-horizontally)

(global-set-key "\C-x&" 'shell-command)
(global-set-key "\C-m" 'newline-and-indent)
(global-set-key "\C-j" 'newline)
(global-set-key "\C-xri" 'string-rectangle)   ;矩形領域に文字列を挿入
(global-set-key "\C-xrd" 'delete-rectangle)   ;        の文字列を削除
(global-set-key "\C-xrk" 'kill-rectangle)     ;        の文字列をkill-ringに追加
(global-set-key "\C-xrc" 'copy-rectangle)     ;        の文字列をコピー
(global-set-key "\C-xry" 'yank-rectangle)     ;        kill-ringから貼り付け

(fset 'yes-or-no-p 'y-or-n-p)

(setq visible-bell nil)
(tool-bar-mode -1)

(set-scroll-bar-mode t)

;;commandとoption入れ替え
(setq ns-command-modifier (quote meta))
(setq ns-alternate-modifier (quote super))

;;起動時の画面サイズ設定
(setq default-frame-alist
      (append (list '(foreground-color . "black")
		    '(background-color . "white")
		    '(border-color . "black")
		    '(mouse-color . "black")
		    '(cursor-color . "black")
		    '(width . 92)  ;; <- ココと
		    '(height . 38)  ;; <- ココの数字
		    '(alpha . (100 100 100 100))
		    )
	      default-frame-alist))

;;color-theme
(require 'color-theme)
(color-theme-initialize)
(color-theme-pierson)

;;; *.~ とかのバックアップファイルを作らない
(setq make-backup-files nil)
;;; .#* とかのバックアップファイルを作らない
(setq auto-save-default nil)

;;１行ずつスクロールする
(setq scroll-conservatively 35
       scroll-margin 0
       scroll-step 1)
;shellモード用
(setq comint-scroll-show-maximum-output t)


;; *scratch*を消さない
(defun my-make-scratch (&optional arg)
  (interactive)
  (progn
    ;; "*scratch*" を作成して buffer-list に放り込む
    (set-buffer (get-buffer-create "*scratch*"))
    (funcall initial-major-mode)
    (erase-buffer)
    (when (and initial-scratch-message (not inhibit-startup-message))
      (insert initial-scratch-message))
    (or arg (progn (setq arg 0)
                   (switch-to-buffer "*scratch*")))
    (cond ((= arg 0) (message "*scratch* is cleared up."))
          ((= arg 1) (message "another *scratch* is created")))))

(add-hook 'kill-buffer-query-functions
          ;; *scratch* バッファで kill-buffer したら内容を消去するだけにする
          (lambda ()
            (if (string= "*scratch*" (buffer-name))
                (progn (my-make-scratch 0) nil)
              t)))


;;ファイルをドラッグして開くときに新規フレームではなく、新規バッファで開く
(setq ns-pop-up-frames nil)

(cond ((macp)
       ;; font
       (create-fontset-from-ascii-font "Ricty-16:weight=normal:slant=normal" nil "ricty")
       (set-fontset-font "fontset-ricty"
			 'unicode
			 (font-spec :family "Ricty" :size 16)
			 nil
			 'append)
       (add-to-list 'default-frame-alist '(font . "fontset-ricty")))
      (t
       (add-to-list 'default-frame-alist '(font . "ricty-13.5"))))

