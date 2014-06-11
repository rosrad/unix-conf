;; this file is used for config the elisp mode

(add-hook 'emacs-lisp-mode-hook
          '(lambda ()
             (local-set-key (kbd "C-h C-f") 'find-function)))

