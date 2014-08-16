(require 'yasnippet)
(add-hook 'term-mode-hook (lambda()
                            (setq yas-dont-activate t)))
;; Let's have snippets in the auto-complete dropdown
(add-to-list 'auto-mode-alist '("yas/.*" . snippet-mode))
(setq yas/root-directory "~/.emacs.d/plugins/yasnippet-snippets/")
(yas/load-directory yas/root-directory)

(add-hook 'prog-mode-hook
          '(lambda ()
             (yas-minor-mode)))
(add-hook 'html-mode-hook
          '(lambda ()
             (yas-minor-mode)))
(add-hook 'org-mode-hook
          '(lambda ()
             (yas-minor-mode)))
(provide 'yas-settings)


