(defun ruby-reindent-then-newline-and-indent ()
  (interactive)
  (call-interactively 'reindent-then-newline-and-indent))

(add-hook 'ruby-mode-hook
          '(lambda()
             (progn
               ;; C-m で 改行 + インデント
               (define-key ruby-mode-map "\C-m" 'ruby-reindent-then-newline-and-indent)
               )))
